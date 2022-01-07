
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_6__ {scalar_t__ object; int pindex; } ;


 int MPASS (int) ;
 TYPE_1__* TAILQ_PREV (TYPE_1__*,int ,int ) ;
 int VM_OBJECT_ASSERT_LOCKED (scalar_t__) ;
 int listq ;
 int pglist ;

vm_page_t
vm_page_prev(vm_page_t m)
{
 vm_page_t prev;

 VM_OBJECT_ASSERT_LOCKED(m->object);
 if ((prev = TAILQ_PREV(m, pglist, listq)) != ((void*)0)) {
  MPASS(prev->object == m->object);
  if (prev->pindex != m->pindex - 1)
   prev = ((void*)0);
 }
 return (prev);
}
