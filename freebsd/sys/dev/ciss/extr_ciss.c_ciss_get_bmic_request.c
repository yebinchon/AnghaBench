
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int16_t ;
struct ciss_softc {int dummy; } ;
struct ciss_request {size_t cr_length; struct ciss_command* cr_cc; int cr_flags; void* cr_data; } ;
struct TYPE_8__ {int cdb_length; int * cdb; scalar_t__ timeout; int direction; int attribute; int type; } ;
struct TYPE_5__ {scalar_t__ target; scalar_t__ bus; int mode; } ;
struct TYPE_6__ {TYPE_1__ physical; } ;
struct TYPE_7__ {TYPE_2__ address; } ;
struct ciss_command {TYPE_4__ cdb; TYPE_3__ header; } ;
struct ciss_bmic_cdb {int bmic_opcode; int size; int opcode; } ;


 int CISS_ARRAY_CONTROLLER_READ ;
 int CISS_ARRAY_CONTROLLER_WRITE ;
 int CISS_CDB_ATTRIBUTE_SIMPLE ;
 int CISS_CDB_DIRECTION_READ ;
 int CISS_CDB_DIRECTION_WRITE ;
 int CISS_CDB_TYPE_COMMAND ;
 int CISS_HDR_ADDRESS_MODE_PERIPHERAL ;
 int CISS_MALLOC_CLASS ;
 int CISS_REQ_DATAIN ;
 int ENOMEM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int bzero (struct ciss_bmic_cdb*,int) ;
 int ciss_get_request (struct ciss_softc*,struct ciss_request**) ;
 int ciss_release_request (struct ciss_request*) ;
 int debug_called (int) ;
 int htons (int ) ;
 void* malloc (size_t,int ,int) ;

__attribute__((used)) static int
ciss_get_bmic_request(struct ciss_softc *sc, struct ciss_request **crp,
        int opcode, void **bufp, size_t bufsize)
{
    struct ciss_request *cr;
    struct ciss_command *cc;
    struct ciss_bmic_cdb *cbc;
    void *buf;
    int error;
    int dataout;

    debug_called(2);

    cr = ((void*)0);
    buf = ((void*)0);




    if ((error = ciss_get_request(sc, &cr)) != 0)
 goto out;




    dataout = 0;
    if ((bufsize > 0) && (bufp != ((void*)0))) {
 if (*bufp == ((void*)0)) {
     if ((buf = malloc(bufsize, CISS_MALLOC_CLASS, M_NOWAIT | M_ZERO)) == ((void*)0)) {
  error = ENOMEM;
  goto out;
     }
 } else {
     buf = *bufp;
     dataout = 1;
 }
    }




    cr->cr_data = buf;
    cr->cr_length = bufsize;
    if (!dataout)
 cr->cr_flags = CISS_REQ_DATAIN;

    cc = cr->cr_cc;
    cc->header.address.physical.mode = CISS_HDR_ADDRESS_MODE_PERIPHERAL;
    cc->header.address.physical.bus = 0;
    cc->header.address.physical.target = 0;
    cc->cdb.cdb_length = sizeof(*cbc);
    cc->cdb.type = CISS_CDB_TYPE_COMMAND;
    cc->cdb.attribute = CISS_CDB_ATTRIBUTE_SIMPLE;
    cc->cdb.direction = dataout ? CISS_CDB_DIRECTION_WRITE : CISS_CDB_DIRECTION_READ;
    cc->cdb.timeout = 0;

    cbc = (struct ciss_bmic_cdb *)&(cc->cdb.cdb[0]);
    bzero(cbc, sizeof(*cbc));
    cbc->opcode = dataout ? CISS_ARRAY_CONTROLLER_WRITE : CISS_ARRAY_CONTROLLER_READ;
    cbc->bmic_opcode = opcode;
    cbc->size = htons((u_int16_t)bufsize);

out:
    if (error) {
 if (cr != ((void*)0))
     ciss_release_request(cr);
    } else {
 *crp = cr;
 if ((bufp != ((void*)0)) && (*bufp == ((void*)0)) && (buf != ((void*)0)))
     *bufp = buf;
    }
    return(error);
}
