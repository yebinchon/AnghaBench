
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int dummy; } ;
struct ciss_request {int cr_sg_tag; int * cr_private; int * cr_complete; scalar_t__ cr_flags; int * cr_data; } ;


 int CISS_SG_MAX ;
 int ENOMEM ;
 struct ciss_request* ciss_dequeue_free (struct ciss_softc*) ;
 int ciss_preen_command (struct ciss_request*) ;
 int debug_called (int) ;

__attribute__((used)) static int
ciss_get_request(struct ciss_softc *sc, struct ciss_request **crp)
{
    struct ciss_request *cr;

    debug_called(2);




    if ((cr = ciss_dequeue_free(sc)) == ((void*)0))
 return(ENOMEM);

    cr->cr_data = ((void*)0);
    cr->cr_flags = 0;
    cr->cr_complete = ((void*)0);
    cr->cr_private = ((void*)0);
    cr->cr_sg_tag = CISS_SG_MAX;

    ciss_preen_command(cr);
    *crp = cr;
    return(0);
}
