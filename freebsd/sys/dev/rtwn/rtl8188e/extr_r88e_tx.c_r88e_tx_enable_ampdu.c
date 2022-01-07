
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r92c_tx_desc {int txdw2; } ;


 int R88E_TXDW2_AGGBK ;
 int R88E_TXDW2_AGGEN ;
 int htole32 (int ) ;

void
r88e_tx_enable_ampdu(void *buf, int enable)
{
 struct r92c_tx_desc *txd = (struct r92c_tx_desc *)buf;

 if (enable)
  txd->txdw2 |= htole32(R88E_TXDW2_AGGEN);
 else
  txd->txdw2 |= htole32(R88E_TXDW2_AGGBK);
}
