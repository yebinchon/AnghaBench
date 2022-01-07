
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_ntb_softc {int device; } ;
typedef int device_t ;


 int amd_init_side_info (struct amd_ntb_softc*) ;
 int amd_ntb_detach (int ) ;
 int amd_ntb_init (struct amd_ntb_softc*) ;
 int amd_ntb_map_pci_bars (struct amd_ntb_softc*) ;
 int amd_ntb_spad_clear (struct amd_ntb_softc*) ;
 int amd_ntb_sysctl_init (struct amd_ntb_softc*) ;
 struct amd_ntb_softc* device_get_softc (int ) ;
 int ntb_register_device (int ) ;
 int pci_enable_busmaster (int ) ;

__attribute__((used)) static int
amd_ntb_attach(device_t device)
{
 struct amd_ntb_softc *ntb = device_get_softc(device);
 int error;

 ntb->device = device;


 pci_enable_busmaster(ntb->device);

 error = amd_ntb_map_pci_bars(ntb);
 if (error)
  goto out;

 error = amd_ntb_init(ntb);
 if (error)
  goto out;

 amd_init_side_info(ntb);

 amd_ntb_spad_clear(ntb);

 amd_ntb_sysctl_init(ntb);


 error = ntb_register_device(device);

out:
 if (error)
  amd_ntb_detach(device);

 return (error);
}
