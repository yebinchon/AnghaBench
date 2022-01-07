
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_11__ {int oflags; } ;


 int KASSERT (int,char*) ;
 scalar_t__ OBJT_DEVICE ;
 scalar_t__ OBJT_MGTDEVICE ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_2__*) ;
 int VPO_UNMANAGED ;
 int dev_pager_free_page (TYPE_2__*,TYPE_1__*) ;
 int pmap_remove_all (TYPE_1__*) ;
 int vm_page_remove (TYPE_1__*) ;
 int vm_page_xunbusy (TYPE_1__*) ;

void
cdev_pager_free_page(vm_object_t object, vm_page_t m)
{

 VM_OBJECT_ASSERT_WLOCKED(object);
 if (object->type == OBJT_MGTDEVICE) {
  KASSERT((m->oflags & VPO_UNMANAGED) == 0, ("unmanaged %p", m));
  pmap_remove_all(m);
  (void)vm_page_remove(m);
  vm_page_xunbusy(m);
 } else if (object->type == OBJT_DEVICE)
  dev_pager_free_page(object, m);
}
