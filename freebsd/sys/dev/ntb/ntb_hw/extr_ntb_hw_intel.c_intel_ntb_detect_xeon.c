
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ntb_softc {int ppd; int conn_type; int device; int features; int dev_type; } ;


 int ENXIO ;
 scalar_t__ HAS_FEATURE (struct ntb_softc*,int ) ;



 int NTB_DEV_DSD ;
 int NTB_DEV_USD ;
 int NTB_PPD_OFFSET ;
 int NTB_SB01BASE_LOCKUP ;
 int NTB_SDOORBELL_LOCKUP ;
 int NTB_SPLIT_BAR ;
 int XEON_PPD_CONN_TYPE ;
 int XEON_PPD_DEV_TYPE ;
 int XEON_PPD_SPLIT_BAR ;
 int device_printf (int ,char*,...) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static int
intel_ntb_detect_xeon(struct ntb_softc *ntb)
{
 uint8_t ppd, conn_type;

 ppd = pci_read_config(ntb->device, NTB_PPD_OFFSET, 1);
 ntb->ppd = ppd;

 if ((ppd & XEON_PPD_DEV_TYPE) != 0)
  ntb->dev_type = NTB_DEV_DSD;
 else
  ntb->dev_type = NTB_DEV_USD;

 if ((ppd & XEON_PPD_SPLIT_BAR) != 0)
  ntb->features |= NTB_SPLIT_BAR;

 if (HAS_FEATURE(ntb, NTB_SB01BASE_LOCKUP) &&
     !HAS_FEATURE(ntb, NTB_SPLIT_BAR)) {
  device_printf(ntb->device,
      "Can not apply SB01BASE_LOCKUP workaround "
      "with split BARs disabled!\n");
  device_printf(ntb->device,
      "Expect system hangs under heavy NTB traffic!\n");
  ntb->features &= ~NTB_SB01BASE_LOCKUP;
 }





 if (HAS_FEATURE(ntb, NTB_SB01BASE_LOCKUP))
  ntb->features &= ~NTB_SDOORBELL_LOCKUP;

 conn_type = ppd & XEON_PPD_CONN_TYPE;
 switch (conn_type) {
 case 130:
  ntb->conn_type = conn_type;
  break;
 case 129:
 case 128:
 default:
  device_printf(ntb->device, "Unsupported connection type: %u\n",
      (unsigned)conn_type);
  return (ENXIO);
 }
 return (0);
}
