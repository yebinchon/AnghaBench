
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;



__attribute__((used)) static int
pa_cmp(const void *a, const void *b)
{
 const vm_paddr_t *pa = a, *pb = b;

 if (*pa < *pb)
  return (-1);
 else if (*pa > *pb)
  return (1);
 else
  return (0);
}
