
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int work_bus; int rfis_bus; } ;
struct ahci_channel {int pm_level; int r_mem; TYPE_1__ dma; } ;
typedef int device_t ;


 int AHCI_CL_OFFSET ;
 int AHCI_P_CLB ;
 int AHCI_P_CLBU ;
 int AHCI_P_CMD ;
 int AHCI_P_CMD_ACTIVE ;
 int AHCI_P_CMD_ALPE ;
 int AHCI_P_CMD_ASP ;
 int AHCI_P_CMD_POD ;
 int AHCI_P_CMD_SUD ;
 int AHCI_P_FB ;
 int AHCI_P_FBU ;
 int AHCI_P_IE ;
 int ATA_OUTL (int ,int ,int) ;
 int ahci_start (struct ahci_channel*,int) ;
 int ahci_start_fr (struct ahci_channel*) ;
 struct ahci_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ahci_ch_init(device_t dev)
{
 struct ahci_channel *ch = device_get_softc(dev);
 uint64_t work;


 ATA_OUTL(ch->r_mem, AHCI_P_IE, 0);

 work = ch->dma.work_bus + AHCI_CL_OFFSET;
 ATA_OUTL(ch->r_mem, AHCI_P_CLB, work & 0xffffffff);
 ATA_OUTL(ch->r_mem, AHCI_P_CLBU, work >> 32);
 work = ch->dma.rfis_bus;
 ATA_OUTL(ch->r_mem, AHCI_P_FB, work & 0xffffffff);
 ATA_OUTL(ch->r_mem, AHCI_P_FBU, work >> 32);

 ATA_OUTL(ch->r_mem, AHCI_P_CMD,
      (AHCI_P_CMD_ACTIVE | AHCI_P_CMD_POD | AHCI_P_CMD_SUD |
      ((ch->pm_level == 2 || ch->pm_level == 3) ? AHCI_P_CMD_ALPE : 0) |
      ((ch->pm_level > 2) ? AHCI_P_CMD_ASP : 0 )));
 ahci_start_fr(ch);
 ahci_start(ch, 1);
 return (0);
}
