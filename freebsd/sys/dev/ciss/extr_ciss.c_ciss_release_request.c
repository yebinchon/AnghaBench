
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int dummy; } ;
struct ciss_request {struct ciss_softc* cr_sc; } ;


 int ciss_requeue_free (struct ciss_request*) ;
 int debug_called (int) ;

__attribute__((used)) static void
ciss_release_request(struct ciss_request *cr)
{
    struct ciss_softc *sc;

    debug_called(2);

    sc = cr->cr_sc;


    ciss_requeue_free(cr);
}
