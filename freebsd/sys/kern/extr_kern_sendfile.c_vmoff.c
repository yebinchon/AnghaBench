
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_ooffset_t ;
typedef scalar_t__ off_t ;


 int PAGE_SIZE ;
 int trunc_page (scalar_t__) ;

__attribute__((used)) static inline vm_ooffset_t
vmoff(int i, off_t off)
{

 if (i == 0)
  return ((vm_ooffset_t)off);

 return (trunc_page(off + i * PAGE_SIZE));
}
