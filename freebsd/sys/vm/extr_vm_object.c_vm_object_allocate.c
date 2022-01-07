
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef scalar_t__ vm_object_t ;
typedef int objtype_t ;


 int M_WAITOK ;
 int _vm_object_allocate (int ,int ,scalar_t__) ;
 int obj_zone ;
 scalar_t__ uma_zalloc (int ,int ) ;

vm_object_t
vm_object_allocate(objtype_t type, vm_pindex_t size)
{
 vm_object_t object;

 object = (vm_object_t)uma_zalloc(obj_zone, M_WAITOK);
 _vm_object_allocate(type, size, object);
 return (object);
}
