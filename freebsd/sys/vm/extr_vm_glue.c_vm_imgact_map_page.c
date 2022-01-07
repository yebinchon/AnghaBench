
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;
typedef int vm_ooffset_t ;
typedef int vm_object_t ;
struct sf_buf {int dummy; } ;


 int SFB_CPUPRIVATE ;
 int sched_pin () ;
 struct sf_buf* sf_buf_alloc (int *,int ) ;
 int * vm_imgact_hold_page (int ,int ) ;

struct sf_buf *
vm_imgact_map_page(vm_object_t object, vm_ooffset_t offset)
{
 vm_page_t m;

 m = vm_imgact_hold_page(object, offset);
 if (m == ((void*)0))
  return (((void*)0));
 sched_pin();
 return (sf_buf_alloc(m, SFB_CPUPRIVATE));
}
