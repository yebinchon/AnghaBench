
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r92c_tx_desc {int txdw1; } ;


 int R88E_TXDW1_MACID ;
 int SM (int ,int) ;
 int htole32 (int ) ;

void
r88e_tx_setup_macid(void *buf, int id)
{
 struct r92c_tx_desc *txd = (struct r92c_tx_desc *)buf;

 txd->txdw1 |= htole32(SM(R88E_TXDW1_MACID, id));
}
