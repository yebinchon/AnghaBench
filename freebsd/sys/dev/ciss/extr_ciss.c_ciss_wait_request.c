
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ciss_request {int cr_flags; TYPE_1__* cr_sc; } ;
struct TYPE_2__ {int ciss_mtx; } ;


 int CISS_REQ_SLEEP ;
 int EWOULDBLOCK ;
 int PRIBIO ;
 int SBT_1MS ;
 int ciss_start (struct ciss_request*) ;
 int debug_called (int) ;
 int msleep_sbt (struct ciss_request*,int *,int ,char*,int,int ,int ) ;

__attribute__((used)) static int
ciss_wait_request(struct ciss_request *cr, int timeout)
{
    int error;

    debug_called(2);

    cr->cr_flags |= CISS_REQ_SLEEP;
    if ((error = ciss_start(cr)) != 0)
 return(error);

    while ((cr->cr_flags & CISS_REQ_SLEEP) && (error != EWOULDBLOCK)) {
 error = msleep_sbt(cr, &cr->cr_sc->ciss_mtx, PRIBIO, "cissREQ",
     SBT_1MS * timeout, 0, 0);
    }
    return(error);
}
