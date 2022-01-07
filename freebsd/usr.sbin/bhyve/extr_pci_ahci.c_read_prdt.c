
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ahci_prdt_entry {int dbc; int dba; } ;
struct ahci_port {int pr_sc; scalar_t__ cmd_lst; } ;
struct ahci_cmd_hdr {int prdtl; } ;


 int AHCI_CL_SIZE ;
 int DBCMASK ;
 int MIN (int,int) ;
 int ahci_ctx (int ) ;
 int memcpy (void*,int *,int) ;
 int * paddr_guest2host (int ,int ,int) ;

__attribute__((used)) static inline void
read_prdt(struct ahci_port *p, int slot, uint8_t *cfis,
  void *buf, int size)
{
 struct ahci_cmd_hdr *hdr;
 struct ahci_prdt_entry *prdt;
 void *to;
 int i, len;

 hdr = (struct ahci_cmd_hdr *)(p->cmd_lst + slot * AHCI_CL_SIZE);
 len = size;
 to = buf;
 prdt = (struct ahci_prdt_entry *)(cfis + 0x80);
 for (i = 0; i < hdr->prdtl && len; i++) {
  uint8_t *ptr;
  uint32_t dbcsz;
  int sublen;

  dbcsz = (prdt->dbc & DBCMASK) + 1;
  ptr = paddr_guest2host(ahci_ctx(p->pr_sc), prdt->dba, dbcsz);
  sublen = MIN(len, dbcsz);
  memcpy(to, ptr, sublen);
  len -= sublen;
  to += sublen;
  prdt++;
 }
}
