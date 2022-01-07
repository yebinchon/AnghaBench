
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ciss_request {TYPE_1__* cr_sc; } ;
struct TYPE_2__ {int ciss_flags; } ;


 int CISS_FLAG_RUNNING ;
 int ciss_poll_request (struct ciss_request*,int) ;
 int ciss_wait_request (struct ciss_request*,int) ;

__attribute__((used)) static int
ciss_synch_request(struct ciss_request *cr, int timeout)
{
    if (cr->cr_sc->ciss_flags & CISS_FLAG_RUNNING) {
 return(ciss_wait_request(cr, timeout));
    } else {
 return(ciss_poll_request(cr, timeout));
    }
}
