
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_object_t ;


 int LIST_INIT (int ) ;
 int USHM_OBJ_UMTX (int ) ;

void
umtx_shm_object_init(vm_object_t object)
{

 LIST_INIT(USHM_OBJ_UMTX(object));
}
