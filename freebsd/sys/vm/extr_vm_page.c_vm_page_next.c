
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_6__ {scalar_t__ object; scalar_t__ pindex; } ;


 int MPASS (int) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int VM_OBJECT_ASSERT_LOCKED (scalar_t__) ;
 int listq ;

vm_page_t
vm_page_next(vm_page_t m)
{
 vm_page_t next;

 VM_OBJECT_ASSERT_LOCKED(m->object);
 if ((next = TAILQ_NEXT(m, listq)) != ((void*)0)) {
  MPASS(next->object == m->object);
  if (next->pindex != m->pindex + 1)
   next = ((void*)0);
 }
 return (next);
}
