
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
struct vnode {int dummy; } ;
struct TYPE_5__ {int type; int flags; } ;


 int KVME_TYPE_DEAD ;
 int KVME_TYPE_DEFAULT ;
 int KVME_TYPE_DEVICE ;
 int KVME_TYPE_MGTDEVICE ;
 int KVME_TYPE_PHYS ;
 int KVME_TYPE_SG ;
 int KVME_TYPE_SWAP ;
 int KVME_TYPE_UNKNOWN ;
 int KVME_TYPE_VNODE ;
 int OBJ_TMPFS_NODE ;
 int VM_OBJECT_ASSERT_LOCKED (TYPE_1__*) ;
 struct vnode* vm_object_vnode (TYPE_1__*) ;

int
vm_object_kvme_type(vm_object_t object, struct vnode **vpp)
{

 VM_OBJECT_ASSERT_LOCKED(object);
 if (vpp != ((void*)0))
  *vpp = vm_object_vnode(object);
 switch (object->type) {
 case 134:
  return (KVME_TYPE_DEFAULT);
 case 128:
  return (KVME_TYPE_VNODE);
 case 129:
  if ((object->flags & OBJ_TMPFS_NODE) != 0)
   return (KVME_TYPE_VNODE);
  return (KVME_TYPE_SWAP);
 case 133:
  return (KVME_TYPE_DEVICE);
 case 131:
  return (KVME_TYPE_PHYS);
 case 135:
  return (KVME_TYPE_DEAD);
 case 130:
  return (KVME_TYPE_SG);
 case 132:
  return (KVME_TYPE_MGTDEVICE);
 default:
  return (KVME_TYPE_UNKNOWN);
 }
}
