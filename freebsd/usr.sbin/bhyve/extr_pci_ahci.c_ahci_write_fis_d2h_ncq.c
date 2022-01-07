
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ahci_port {int tfd; int ci; } ;
typedef int fis ;


 int ATA_S_DSC ;
 int ATA_S_READY ;
 int FIS_TYPE_REGD2H ;
 int ahci_write_fis (struct ahci_port*,int,int*) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void
ahci_write_fis_d2h_ncq(struct ahci_port *p, int slot)
{
 uint8_t fis[20];

 p->tfd = ATA_S_READY | ATA_S_DSC;
 memset(fis, 0, sizeof(fis));
 fis[0] = FIS_TYPE_REGD2H;
 fis[1] = 0;
 fis[2] = p->tfd;
 fis[3] = 0;
 p->ci &= ~(1 << slot);
 ahci_write_fis(p, FIS_TYPE_REGD2H, fis);
}
