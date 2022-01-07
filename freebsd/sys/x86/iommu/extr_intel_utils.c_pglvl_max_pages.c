
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;


 int DMAR_NPTEPG ;

vm_pindex_t
pglvl_max_pages(int pglvl)
{
 vm_pindex_t res;
 int i;

 for (res = 0, i = pglvl; i > 0; i--) {
  res *= DMAR_NPTEPG;
  res++;
 }
 return (res);
}
