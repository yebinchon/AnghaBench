
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct ahci_port {int bctx; } ;
typedef int buf ;


 int ATA_I_CMD ;
 int ATA_I_IN ;
 int ATA_S_DSC ;
 int ATA_S_READY ;
 int ahci_write_fis_d2h (struct ahci_port*,int,int*,int) ;
 int be32enc (int*,int) ;
 int blockif_size (int ) ;
 int write_prdt (struct ahci_port*,int,int*,int*,int) ;

__attribute__((used)) static void
atapi_read_capacity(struct ahci_port *p, int slot, uint8_t *cfis)
{
 uint8_t buf[8];
 uint64_t sectors;

 sectors = blockif_size(p->bctx) / 2048;
 be32enc(buf, sectors - 1);
 be32enc(buf + 4, 2048);
 cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
 write_prdt(p, slot, cfis, buf, sizeof(buf));
 ahci_write_fis_d2h(p, slot, cfis, ATA_S_READY | ATA_S_DSC);
}
