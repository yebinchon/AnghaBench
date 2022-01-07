
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* br_control; void* br_pribus; void* br_secbus; void* br_subbus; void* br_seclat; } ;
struct TYPE_5__ {int hdrtype; int nummaps; void* subdevice; void* subvendor; TYPE_1__ bridge; void* maxlat; void* mingnt; } ;
typedef TYPE_2__ pcicfgregs ;
typedef int device_t ;


 int PCIM_HDRTYPE ;



 int PCIR_BRIDGECTL_1 ;
 int PCIR_BRIDGECTL_2 ;
 int PCIR_MAXLAT ;
 int PCIR_MINGNT ;
 int PCIR_PRIBUS_1 ;
 int PCIR_PRIBUS_2 ;
 int PCIR_SECBUS_1 ;
 int PCIR_SECBUS_2 ;
 int PCIR_SECLAT_1 ;
 int PCIR_SECLAT_2 ;
 int PCIR_SUBBUS_1 ;
 int PCIR_SUBBUS_2 ;
 int PCIR_SUBDEV_0 ;
 int PCIR_SUBDEV_2 ;
 int PCIR_SUBVEND_0 ;
 int PCIR_SUBVEND_2 ;
 int PCI_MAXMAPS_0 ;
 int PCI_MAXMAPS_1 ;
 int PCI_MAXMAPS_2 ;
 void* REG (int ,int) ;

__attribute__((used)) static void
pci_hdrtypedata(device_t pcib, int b, int s, int f, pcicfgregs *cfg)
{

 switch (cfg->hdrtype & PCIM_HDRTYPE) {
 case 128:
  cfg->subvendor = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_SUBVEND_0, 2);
  cfg->subdevice = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_SUBDEV_0, 2);
  cfg->mingnt = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_MINGNT, 1);
  cfg->maxlat = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_MAXLAT, 1);
  cfg->nummaps = PCI_MAXMAPS_0;
  break;
 case 130:
  cfg->bridge.br_seclat = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_SECLAT_1, 1);
  cfg->bridge.br_subbus = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_SUBBUS_1, 1);
  cfg->bridge.br_secbus = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_SECBUS_1, 1);
  cfg->bridge.br_pribus = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_PRIBUS_1, 1);
  cfg->bridge.br_control = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_BRIDGECTL_1, 2);
  cfg->nummaps = PCI_MAXMAPS_1;
  break;
 case 129:
  cfg->bridge.br_seclat = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_SECLAT_2, 1);
  cfg->bridge.br_subbus = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_SUBBUS_2, 1);
  cfg->bridge.br_secbus = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_SECBUS_2, 1);
  cfg->bridge.br_pribus = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_PRIBUS_2, 1);
  cfg->bridge.br_control = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_BRIDGECTL_2, 2);
  cfg->subvendor = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_SUBVEND_2, 2);
  cfg->subdevice = PCIB_READ_CONFIG(pcib, b, s, f, PCIR_SUBDEV_2, 2);
  cfg->nummaps = PCI_MAXMAPS_2;
  break;
 }

}
