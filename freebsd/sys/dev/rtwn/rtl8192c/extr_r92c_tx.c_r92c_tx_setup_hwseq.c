
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r92c_tx_desc {int txdw4; } ;


 int R92C_TXDW4_HWSEQ_EN ;
 int htole32 (int ) ;

void
r92c_tx_setup_hwseq(void *buf)
{
 struct r92c_tx_desc *txd = (struct r92c_tx_desc *)buf;

 txd->txdw4 |= htole32(R92C_TXDW4_HWSEQ_EN);
}
