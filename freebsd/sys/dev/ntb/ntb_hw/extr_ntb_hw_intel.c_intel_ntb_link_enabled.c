
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ntb_softc {scalar_t__ type; scalar_t__ conn_type; TYPE_1__* reg; int device; } ;
typedef int device_t ;
struct TYPE_2__ {int ntb_ctl; } ;


 int ATOM_PPD_INIT_LINK ;
 scalar_t__ NTB_ATOM ;
 int NTB_CNTL_LINK_DISABLE ;
 scalar_t__ NTB_CONN_TRANSPARENT ;
 int NTB_PPD_OFFSET ;
 struct ntb_softc* device_get_softc (int ) ;
 int intel_ntb_reg_read (int,int ) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static bool
intel_ntb_link_enabled(device_t dev)
{
 struct ntb_softc *ntb = device_get_softc(dev);
 uint32_t cntl;

 if (ntb->type == NTB_ATOM) {
  cntl = pci_read_config(ntb->device, NTB_PPD_OFFSET, 4);
  return ((cntl & ATOM_PPD_INIT_LINK) != 0);
 }

 if (ntb->conn_type == NTB_CONN_TRANSPARENT)
  return (1);

 cntl = intel_ntb_reg_read(4, ntb->reg->ntb_ctl);
 return ((cntl & NTB_CNTL_LINK_DISABLE) == 0);
}
