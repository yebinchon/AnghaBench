
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_ooffset_t ;


 int DEV_BSIZE ;
 int PAGE_MASK ;

__attribute__((used)) static int
vn_off2bidx(vm_ooffset_t offset)
{

 return ((offset & PAGE_MASK) / DEV_BSIZE);
}
