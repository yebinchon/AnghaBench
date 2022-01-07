
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mkuz_fifo_queue {struct mkuz_bchain_link* last; } ;
struct mkuz_bchain_link {int this; struct mkuz_bchain_link* prev; } ;
typedef scalar_t__ (* cmp_cb_t ) (int ,void*) ;



__attribute__((used)) static int
mkuz_fqueue_check(struct mkuz_fifo_queue *fqp, cmp_cb_t cmp_cb, void *cap)
{
    struct mkuz_bchain_link *ip;

    for (ip = fqp->last; ip != ((void*)0); ip = ip->prev) {
        if (cmp_cb(ip->this, cap)) {
            return (1);
        }
    }
    return (0);
}
