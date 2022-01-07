
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtwn_pci_softc {int dummy; } ;
struct r92ce_tx_desc {int nextdescaddr; } ;


 int htole32 (int ) ;

void
r92ce_setup_tx_desc(struct rtwn_pci_softc *pc, void *desc,
    uint32_t next_desc_addr)
{
 struct r92ce_tx_desc *txd = desc;


 txd->nextdescaddr = htole32(next_desc_addr);
}
