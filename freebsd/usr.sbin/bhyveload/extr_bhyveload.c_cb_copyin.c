
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int EFAULT ;
 int ctx ;
 int memcpy (char*,void const*,size_t) ;
 char* vm_map_gpa (int ,int,size_t) ;

__attribute__((used)) static int
cb_copyin(void *arg, const void *from, uint64_t to, size_t size)
{
 char *ptr;

 to &= 0x7fffffff;

 ptr = vm_map_gpa(ctx, to, size);
 if (ptr == ((void*)0))
  return (EFAULT);

 memcpy(ptr, from, size);
 return (0);
}
