
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_priv {int evtchn; int intf; } ;


 int PAGE_SIZE ;
 int PAT_WRITE_BACK ;
 int pmap_mapdev_attr (int ,int ,int ) ;
 int ptoa (int ) ;
 int xen_get_console_evtchn () ;
 int xen_get_console_mfn () ;

__attribute__((used)) static void
xencons_early_init_ring(struct xencons_priv *cons)
{
 cons->intf = pmap_mapdev_attr(ptoa(xen_get_console_mfn()), PAGE_SIZE,
     PAT_WRITE_BACK);
 cons->evtchn = xen_get_console_evtchn();
}
