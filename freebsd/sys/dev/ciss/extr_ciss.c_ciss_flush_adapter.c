
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int dummy; } ;
struct ciss_request {int dummy; } ;
struct ciss_bmic_flush_cache {int dummy; } ;


 int CISS_BMIC_FLUSH_CACHE ;

 int CISS_MALLOC_CLASS ;
 int EIO ;
 int ENOMEM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int ciss_get_bmic_request (struct ciss_softc*,struct ciss_request**,int ,void**,int) ;
 int ciss_name_command_status (int) ;
 int ciss_printf (struct ciss_softc*,char*,int) ;
 int ciss_release_request (struct ciss_request*) ;
 int ciss_report_request (struct ciss_request*,int*,int *) ;
 int ciss_synch_request (struct ciss_request*,int) ;
 int debug_called (int) ;
 int free (struct ciss_bmic_flush_cache*,int ) ;
 struct ciss_bmic_flush_cache* malloc (int,int ,int) ;

__attribute__((used)) static int
ciss_flush_adapter(struct ciss_softc *sc)
{
    struct ciss_request *cr;
    struct ciss_bmic_flush_cache *cbfc;
    int error, command_status;

    debug_called(1);

    cr = ((void*)0);
    cbfc = ((void*)0);






    if ((cbfc = malloc(sizeof(*cbfc), CISS_MALLOC_CLASS, M_NOWAIT | M_ZERO)) == ((void*)0)) {
 error = ENOMEM;
 goto out;
    }
    if ((error = ciss_get_bmic_request(sc, &cr, CISS_BMIC_FLUSH_CACHE,
           (void **)&cbfc, sizeof(*cbfc))) != 0)
 goto out;




    if ((error = ciss_synch_request(cr, 60 * 1000)) != 0) {
 ciss_printf(sc, "error sending BMIC FLUSH_CACHE command (%d)\n", error);
 goto out;
    }




    ciss_report_request(cr, &command_status, ((void*)0));
    switch(command_status) {
    case 128:
 break;
    default:
 ciss_printf(sc, "error flushing cache (%s)\n",
      ciss_name_command_status(command_status));
 error = EIO;
 goto out;
    }

out:
    if (cbfc != ((void*)0))
 free(cbfc, CISS_MALLOC_CLASS);
    if (cr != ((void*)0))
 ciss_release_request(cr);
    return(error);
}
