
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pmap_t ;


 int invltlb () ;
 scalar_t__ kernel_pmap ;

__attribute__((used)) static void
pmap_invalidate_all_int(pmap_t pmap)
{

 if (pmap == kernel_pmap)
  invltlb();
}
