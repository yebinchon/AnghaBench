
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_resources {int bus_intrs; } ;
struct bhndb_intr_handler {int ih_active; int ih_cookiep; } ;


 int KASSERT (int,char*) ;
 int STAILQ_REMOVE (int *,struct bhndb_intr_handler*,int ,int ) ;
 struct bhndb_intr_handler* bhndb_find_intr_handler (struct bhndb_resources*,struct bhndb_intr_handler*) ;
 int bhndb_intr_handler ;
 int ih_link ;

void
bhndb_deregister_intr_handler(struct bhndb_resources *br,
    struct bhndb_intr_handler *ih)
{
 KASSERT(ih->ih_active, ("duplicate deregistration of interrupt "
     "handler %p", ih->ih_cookiep));

 KASSERT(bhndb_find_intr_handler(br, ih) == ih,
     ("unknown interrupt handler %p", ih));

 STAILQ_REMOVE(&br->bus_intrs, ih, bhndb_intr_handler, ih_link);
 ih->ih_active = 0;
}
