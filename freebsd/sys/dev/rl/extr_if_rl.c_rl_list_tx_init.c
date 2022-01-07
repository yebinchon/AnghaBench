
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rl_chain_data {scalar_t__ last_tx; scalar_t__ cur_tx; int ** rl_tx_chain; } ;
struct rl_softc {struct rl_chain_data rl_cdata; } ;


 int CSR_WRITE_4 (struct rl_softc*,scalar_t__,int) ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 scalar_t__ RL_TXADDR0 ;
 int RL_TX_LIST_CNT ;

__attribute__((used)) static int
rl_list_tx_init(struct rl_softc *sc)
{
 struct rl_chain_data *cd;
 int i;

 RL_LOCK_ASSERT(sc);

 cd = &sc->rl_cdata;
 for (i = 0; i < RL_TX_LIST_CNT; i++) {
  cd->rl_tx_chain[i] = ((void*)0);
  CSR_WRITE_4(sc,
      RL_TXADDR0 + (i * sizeof(uint32_t)), 0x0000000);
 }

 sc->rl_cdata.cur_tx = 0;
 sc->rl_cdata.last_tx = 0;

 return (0);
}
