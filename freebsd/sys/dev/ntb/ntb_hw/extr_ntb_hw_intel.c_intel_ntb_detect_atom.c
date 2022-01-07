
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ntb_softc {int ppd; int conn_type; int device; int dev_type; } ;


 int ATOM_PPD_CONN_TYPE ;
 int ATOM_PPD_DEV_TYPE ;
 int ENXIO ;

 int NTB_DEV_DSD ;
 int NTB_DEV_USD ;
 int NTB_PPD_OFFSET ;
 int device_printf (int ,char*) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static int
intel_ntb_detect_atom(struct ntb_softc *ntb)
{
 uint32_t ppd, conn_type;

 ppd = pci_read_config(ntb->device, NTB_PPD_OFFSET, 4);
 ntb->ppd = ppd;

 if ((ppd & ATOM_PPD_DEV_TYPE) != 0)
  ntb->dev_type = NTB_DEV_DSD;
 else
  ntb->dev_type = NTB_DEV_USD;

 conn_type = (ppd & ATOM_PPD_CONN_TYPE) >> 8;
 switch (conn_type) {
 case 128:
  ntb->conn_type = conn_type;
  break;
 default:
  device_printf(ntb->device, "Unsupported NTB configuration\n");
  return (ENXIO);
 }
 return (0);
}
