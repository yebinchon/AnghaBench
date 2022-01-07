
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int NM_BRIDGES ;
 int netmap_bns_register () ;
 int * netmap_init_bridges2 (int ) ;
 int * nm_bridges ;

int
netmap_init_bridges(void)
{



 nm_bridges = netmap_init_bridges2(NM_BRIDGES);
 if (nm_bridges == ((void*)0))
  return ENOMEM;
 return 0;

}
