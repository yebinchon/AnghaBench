
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ahci_channel {int r_mem; } ;


 int AHCI_P_CMD ;
 int AHCI_P_CMD_FRE ;
 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;

__attribute__((used)) static void
ahci_start_fr(struct ahci_channel *ch)
{
 u_int32_t cmd;


 cmd = ATA_INL(ch->r_mem, AHCI_P_CMD);
 ATA_OUTL(ch->r_mem, AHCI_P_CMD, cmd | AHCI_P_CMD_FRE);
}
