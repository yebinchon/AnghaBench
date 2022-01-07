
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct vm_freelist {int lcnt; int pl; } ;
struct TYPE_5__ {int order; } ;


 int TAILQ_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int listq ;

__attribute__((used)) static void
vm_freelist_add(struct vm_freelist *fl, vm_page_t m, int order, int tail)
{

 m->order = order;
 if (tail)
  TAILQ_INSERT_TAIL(&fl[order].pl, m, listq);
 else
  TAILQ_INSERT_HEAD(&fl[order].pl, m, listq);
 fl[order].lcnt++;
}
