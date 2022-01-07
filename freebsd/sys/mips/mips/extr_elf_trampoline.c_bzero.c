
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ uint32_t ;



__attribute__((used)) static __inline void
bzero(void *addr, size_t count)
{
 char *tmp = (char *)addr;

 while (count > 0) {
  if (count >= 4 && !((vm_offset_t)tmp & 3)) {
   *(uint32_t *)tmp = 0;
   tmp += 4;
   count -= 4;
  } else {
   *tmp = 0;
   tmp++;
   count--;
  }
 }
}
