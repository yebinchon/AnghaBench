
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_resources {int bus_intrs; } ;
struct bhndb_intr_handler {int ih_active; int * ih_cookiep; } ;


 int KASSERT (int,char*) ;
 int STAILQ_INSERT_HEAD (int *,struct bhndb_intr_handler*,int ) ;
 int ih_link ;

void
bhndb_register_intr_handler(struct bhndb_resources *br,
    struct bhndb_intr_handler *ih)
{
 KASSERT(!ih->ih_active, ("duplicate registration of interrupt "
     "handler %p", ih->ih_cookiep));
 KASSERT(ih->ih_cookiep != ((void*)0), ("missing cookiep"));

 ih->ih_active = 1;
 STAILQ_INSERT_HEAD(&br->bus_intrs, ih, ih_link);
}
