
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ciss_softc {int ciss_mtx; } ;
struct ciss_request {int * cr_data; int cr_length; struct ciss_command* cr_cc; } ;
struct ciss_error_info {int dummy; } ;
struct TYPE_4__ {int host_tag; int address; } ;
struct ciss_command {TYPE_1__ header; int * sg; int cdb; } ;
struct TYPE_5__ {int buf_size; int buf; int error_info; struct ciss_error_info Request; struct ciss_error_info LUN_info; } ;
typedef TYPE_2__ IOCTL_Command_struct ;


 int CISS_HDR_HOST_TAG_ERROR ;
 int CISS_MALLOC_CLASS ;
 int ENOMEM ;
 int M_NOWAIT ;
 int PPAUSE ;
 int bcopy (struct ciss_error_info*,int *,int) ;
 int bzero (struct ciss_error_info*,int) ;
 scalar_t__ ciss_get_request (struct ciss_softc*,struct ciss_request**) ;
 int ciss_release_request (struct ciss_request*) ;
 int ciss_synch_request (struct ciss_request*,int) ;
 int copyin (int ,int *,int ) ;
 int copyout (int *,int ,int ) ;
 int debug (int ,char*,int,...) ;
 int debug_called (int) ;
 int free (int *,int ) ;
 int hz ;
 int * malloc (int ,int ,int ) ;
 int msleep (struct ciss_softc*,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
ciss_user_command(struct ciss_softc *sc, IOCTL_Command_struct *ioc)
{
    struct ciss_request *cr;
    struct ciss_command *cc;
    struct ciss_error_info *ce;
    int error = 0;

    debug_called(1);

    cr = ((void*)0);




    while (ciss_get_request(sc, &cr) != 0)
 msleep(sc, &sc->ciss_mtx, PPAUSE, "cissREQ", hz);
    cc = cr->cr_cc;




    mtx_unlock(&sc->ciss_mtx);
    cr->cr_length = ioc->buf_size;
    if (ioc->buf_size > 0) {
 if ((cr->cr_data = malloc(ioc->buf_size, CISS_MALLOC_CLASS, M_NOWAIT)) == ((void*)0)) {
     error = ENOMEM;
     goto out_unlocked;
 }
 if ((error = copyin(ioc->buf, cr->cr_data, ioc->buf_size))) {
     debug(0, "copyin: bad data buffer %p/%d", ioc->buf, ioc->buf_size);
     goto out_unlocked;
 }
    }




    bcopy(&ioc->LUN_info, &cc->header.address, sizeof(cc->header.address));
    bcopy(&ioc->Request, &cc->cdb, sizeof(cc->cdb));


    mtx_lock(&sc->ciss_mtx);




    if ((error = ciss_synch_request(cr, 60 * 1000))) {
 debug(0, "request failed - %d", error);
 goto out;
    }




    ce = (struct ciss_error_info *)&(cc->sg[0]);
    if ((cc->header.host_tag & CISS_HDR_HOST_TAG_ERROR) == 0)
 bzero(ce, sizeof(*ce));




    bcopy(ce, &ioc->error_info, sizeof(*ce));
    mtx_unlock(&sc->ciss_mtx);
    if ((ioc->buf_size > 0) &&
 (error = copyout(cr->cr_data, ioc->buf, ioc->buf_size))) {
 debug(0, "copyout: bad data buffer %p/%d", ioc->buf, ioc->buf_size);
 goto out_unlocked;
    }


    error = 0;

out_unlocked:
    mtx_lock(&sc->ciss_mtx);

out:
    if ((cr != ((void*)0)) && (cr->cr_data != ((void*)0)))
 free(cr->cr_data, CISS_MALLOC_CLASS);
    if (cr != ((void*)0))
 ciss_release_request(cr);
    return(error);
}
