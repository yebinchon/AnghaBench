
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_softc {int dummy; } ;


 int CSR_WRITE_4 (struct et_softc*,int ,int) ;
 int ET_TXMAC_CTRL ;
 int ET_TXMAC_CTRL_ENABLE ;
 int ET_TXMAC_CTRL_FC_DISABLE ;
 int ET_TXMAC_FLOWCTRL ;
 int ET_TXMAC_FLOWCTRL_CFPT_SHIFT ;

__attribute__((used)) static void
et_init_txmac(struct et_softc *sc)
{


 CSR_WRITE_4(sc, ET_TXMAC_CTRL, ET_TXMAC_CTRL_FC_DISABLE);






 CSR_WRITE_4(sc, ET_TXMAC_FLOWCTRL, 0 << ET_TXMAC_FLOWCTRL_CFPT_SHIFT);


 CSR_WRITE_4(sc, ET_TXMAC_CTRL,
      ET_TXMAC_CTRL_ENABLE | ET_TXMAC_CTRL_FC_DISABLE);
}
