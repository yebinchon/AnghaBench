
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_adapter {int * ifp; } ;


 int NM_DETACH_NA (int *) ;

__attribute__((used)) static void
netmap_hw_dtor(struct netmap_adapter *na)
{
 if (na->ifp == ((void*)0))
  return;

 NM_DETACH_NA(na->ifp);
}
