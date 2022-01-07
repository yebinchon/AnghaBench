
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * vm_page_t ;
struct spglist {int dummy; } ;
struct TYPE_3__ {int ss; } ;
struct TYPE_4__ {TYPE_1__ s; } ;


 scalar_t__ SLIST_EMPTY (struct spglist*) ;
 int * SLIST_FIRST (struct spglist*) ;
 int SLIST_REMOVE_HEAD (struct spglist*,int ) ;
 TYPE_2__ plinks ;
 int vm_page_free_toq (int *) ;
 int vm_wire_sub (int) ;

void
vm_page_free_pages_toq(struct spglist *free, bool update_wire_count)
{
 vm_page_t m;
 int count;

 if (SLIST_EMPTY(free))
  return;

 count = 0;
 while ((m = SLIST_FIRST(free)) != ((void*)0)) {
  count++;
  SLIST_REMOVE_HEAD(free, plinks.s.ss);
  vm_page_free_toq(m);
 }

 if (update_wire_count)
  vm_wire_sub(count);
}
