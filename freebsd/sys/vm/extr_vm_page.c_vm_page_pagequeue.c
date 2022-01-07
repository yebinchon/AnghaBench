
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef size_t uint8_t ;
struct vm_pagequeue {int dummy; } ;
struct TYPE_6__ {struct vm_pagequeue* vmd_pagequeues; } ;
struct TYPE_5__ {int queue; } ;


 size_t PQ_NONE ;
 size_t atomic_load_8 (int *) ;
 TYPE_2__* vm_pagequeue_domain (TYPE_1__*) ;

__attribute__((used)) static struct vm_pagequeue *
vm_page_pagequeue(vm_page_t m)
{

 uint8_t queue;

 if ((queue = atomic_load_8(&m->queue)) == PQ_NONE)
  return (((void*)0));
 return (&vm_pagequeue_domain(m)->vmd_pagequeues[queue]);
}
