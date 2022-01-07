
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NM_BRIDGES ;
 int netmap_bns_unregister () ;
 int netmap_uninit_bridges2 (int ,int ) ;
 int nm_bridges ;

void
netmap_uninit_bridges(void)
{



 netmap_uninit_bridges2(nm_bridges, NM_BRIDGES);

}
