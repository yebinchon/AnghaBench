
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ahci_channel {scalar_t__ disablephy; } ;


 int ATA_SC_DET_DISABLE ;

__attribute__((used)) static uint32_t
ahci_ch_detval(struct ahci_channel *ch, uint32_t val)
{

 return ch->disablephy ? ATA_SC_DET_DISABLE : val;
}
