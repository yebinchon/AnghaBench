
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r92c_tx_desc {int txdw1; } ;


 int R92C_TXDW1_AGGBK ;
 int R92C_TXDW1_AGGEN ;
 int htole32 (int ) ;

void
r92c_tx_enable_ampdu(void *buf, int enable)
{
 struct r92c_tx_desc *txd = (struct r92c_tx_desc *)buf;

 if (enable)
  txd->txdw1 |= htole32(R92C_TXDW1_AGGEN);
 else
  txd->txdw1 |= htole32(R92C_TXDW1_AGGBK);
}
