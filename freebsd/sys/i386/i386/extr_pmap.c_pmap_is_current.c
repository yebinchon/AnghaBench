
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pmap_t ;


 scalar_t__ kernel_pmap ;

__attribute__((used)) static __inline int
pmap_is_current(pmap_t pmap)
{

 return (pmap == kernel_pmap);
}
