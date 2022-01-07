
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct bce_softc {TYPE_1__* status_block; } ;
struct TYPE_2__ {int status_tx_quick_consumer_index0; } ;


 int USABLE_TX_BD_PER_PAGE ;
 int mb () ;

__attribute__((used)) static inline u16
bce_get_hw_tx_cons(struct bce_softc *sc)
{
 u16 hw_cons;

 mb();
 hw_cons = sc->status_block->status_tx_quick_consumer_index0;
 if ((hw_cons & USABLE_TX_BD_PER_PAGE) == USABLE_TX_BD_PER_PAGE)
  hw_cons++;

 return hw_cons;
}
