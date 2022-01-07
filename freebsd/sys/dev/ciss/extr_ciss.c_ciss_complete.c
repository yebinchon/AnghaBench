
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int dummy; } ;
struct ciss_request {int cr_flags; int (* cr_complete ) (struct ciss_request*) ;} ;
typedef int cr_qhead_t ;


 int CISS_REQ_BUSY ;
 int CISS_REQ_POLL ;
 int CISS_REQ_SLEEP ;
 struct ciss_request* ciss_dequeue_complete (struct ciss_softc*,int *) ;
 int ciss_enqueue_free (struct ciss_request*) ;
 int ciss_printf (struct ciss_softc*,char*) ;
 int ciss_unmap_request (struct ciss_request*) ;
 int debug_called (int) ;
 int stub1 (struct ciss_request*) ;
 int wakeup (struct ciss_request*) ;

__attribute__((used)) static void
ciss_complete(struct ciss_softc *sc, cr_qhead_t *qh)
{
    struct ciss_request *cr;

    debug_called(2);





    for (;;) {
 if ((cr = ciss_dequeue_complete(sc, qh)) == ((void*)0))
     break;
 ciss_unmap_request(cr);

 if ((cr->cr_flags & CISS_REQ_BUSY) == 0)
     ciss_printf(sc, "WARNING: completing non-busy request\n");
 cr->cr_flags &= ~CISS_REQ_BUSY;




 if (cr->cr_complete != ((void*)0)) {
     cr->cr_complete(cr);
     continue;
 }




 if (cr->cr_flags & CISS_REQ_SLEEP) {
     cr->cr_flags &= ~CISS_REQ_SLEEP;
     wakeup(cr);
     continue;
 }




 if (cr->cr_flags & CISS_REQ_POLL) {
     cr->cr_flags &= ~CISS_REQ_POLL;
     continue;
 }





 ciss_printf(sc, "WARNING: completed command with no submitter\n");
 ciss_enqueue_free(cr);
    }
}
