
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ahci_channel {int mtx; int r_mem; } ;


 int AHCI_P_IS ;
 int ATA_INL (int ,int ) ;
 int ahci_ch_intr_main (struct ahci_channel*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
ahci_ch_intr(void *arg)
{
 struct ahci_channel *ch = (struct ahci_channel *)arg;
 uint32_t istatus;


 istatus = ATA_INL(ch->r_mem, AHCI_P_IS);

 mtx_lock(&ch->mtx);
 ahci_ch_intr_main(ch, istatus);
 mtx_unlock(&ch->mtx);
}
