
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuse_memory {int object; } ;


 int M_CUSE ;
 int free (struct cuse_memory*,int ) ;
 int vm_object_deallocate (int ) ;

__attribute__((used)) static void
cuse_vm_memory_free(struct cuse_memory *mem)
{

 vm_object_deallocate(mem->object);


 free(mem, M_CUSE);
}
