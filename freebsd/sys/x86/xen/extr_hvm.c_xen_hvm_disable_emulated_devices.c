
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int XEN_MAGIC_IOPORT ;
 scalar_t__ XMI_MAGIC ;
 int XMI_UNPLUG_IDE_DISKS ;
 int XMI_UNPLUG_NICS ;
 scalar_t__ bootverbose ;
 scalar_t__ inw (int ) ;
 int outw (int ,int ) ;
 int printf (char*) ;
 scalar_t__ xen_disable_pv_disks ;
 scalar_t__ xen_disable_pv_nics ;
 scalar_t__ xen_pv_domain () ;

__attribute__((used)) static void
xen_hvm_disable_emulated_devices(void)
{
 u_short disable_devs = 0;

 if (xen_pv_domain()) {




  if (xen_disable_pv_disks != 0 || xen_disable_pv_nics != 0)
   printf("PV devices cannot be disabled in PV guests\n");
  return;
 }

 if (inw(XEN_MAGIC_IOPORT) != XMI_MAGIC)
  return;

 if (xen_disable_pv_disks == 0) {
  if (bootverbose)
   printf("XEN: disabling emulated disks\n");
  disable_devs |= XMI_UNPLUG_IDE_DISKS;
 }
 if (xen_disable_pv_nics == 0) {
  if (bootverbose)
   printf("XEN: disabling emulated nics\n");
  disable_devs |= XMI_UNPLUG_NICS;
 }

 if (disable_devs != 0)
  outw(XEN_MAGIC_IOPORT, disable_devs);
}
