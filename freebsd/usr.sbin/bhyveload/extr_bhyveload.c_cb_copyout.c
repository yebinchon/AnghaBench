
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int EFAULT ;
 int ctx ;
 int memcpy (void*,char*,size_t) ;
 char* vm_map_gpa (int ,int,size_t) ;

__attribute__((used)) static int
cb_copyout(void *arg, uint64_t from, void *to, size_t size)
{
 char *ptr;

 from &= 0x7fffffff;

 ptr = vm_map_gpa(ctx, from, size);
 if (ptr == ((void*)0))
  return (EFAULT);

 memcpy(to, ptr, size);
 return (0);
}
