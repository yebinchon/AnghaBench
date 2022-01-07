
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r92c_tx_desc {int txdseq; } ;


 int R88E_TXDSEQ_HWSEQ_EN ;
 int htole16 (int ) ;

void
r88e_tx_setup_hwseq(void *buf)
{
 struct r92c_tx_desc *txd = (struct r92c_tx_desc *)buf;

 txd->txdseq |= htole16(R88E_TXDSEQ_HWSEQ_EN);
}
