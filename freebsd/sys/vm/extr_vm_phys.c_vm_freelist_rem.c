
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct vm_freelist {int lcnt; int pl; } ;
struct TYPE_4__ {int order; } ;


 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int VM_NFREEORDER ;
 int listq ;

__attribute__((used)) static void
vm_freelist_rem(struct vm_freelist *fl, vm_page_t m, int order)
{

 TAILQ_REMOVE(&fl[order].pl, m, listq);
 fl[order].lcnt--;
 m->order = VM_NFREEORDER;
}
