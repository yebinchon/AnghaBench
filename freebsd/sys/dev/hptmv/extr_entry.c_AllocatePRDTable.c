
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pFreePRDLink; } ;
typedef int * PVOID ;
typedef TYPE_1__ IAL_ADAPTER_T ;


 int KdPrint (char*) ;

__attribute__((used)) static PVOID
AllocatePRDTable(IAL_ADAPTER_T *pAdapter)
{
 PVOID ret;
 if (pAdapter->pFreePRDLink) {
  KdPrint(("pAdapter->pFreePRDLink:%p\n",pAdapter->pFreePRDLink));
  ret = pAdapter->pFreePRDLink;
  pAdapter->pFreePRDLink = *(void**)ret;
  return ret;
 }
 return ((void*)0);
}
