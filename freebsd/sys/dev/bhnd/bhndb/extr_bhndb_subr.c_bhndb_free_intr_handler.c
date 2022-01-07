
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_intr_handler {int ih_cookiep; int ih_active; } ;


 int KASSERT (int,char*) ;
 int M_BHND ;
 int free (struct bhndb_intr_handler*,int ) ;

void
bhndb_free_intr_handler(struct bhndb_intr_handler *ih)
{
 KASSERT(!ih->ih_active, ("free of active interrupt handler %p",
     ih->ih_cookiep));

 free(ih, M_BHND);
}
