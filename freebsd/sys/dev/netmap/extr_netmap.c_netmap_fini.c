
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NMG_LOCK_DESTROY () ;
 int destroy_dev (scalar_t__) ;
 scalar_t__ netmap_dev ;
 int netmap_mem_fini () ;
 int netmap_uninit_bridges () ;
 int nm_os_ifnet_fini () ;
 int nm_prinf (char*) ;

void
netmap_fini(void)
{
 if (netmap_dev)
  destroy_dev(netmap_dev);

 nm_os_ifnet_fini();
 netmap_uninit_bridges();
 netmap_mem_fini();
 NMG_LOCK_DESTROY();
 nm_prinf("netmap: unloaded module.");
}
