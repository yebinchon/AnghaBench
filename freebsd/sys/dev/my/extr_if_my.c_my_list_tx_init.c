
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct my_chain_data {int * my_tx_head; int my_tx_tail; TYPE_1__* my_tx_chain; TYPE_1__* my_tx_free; } ;
struct my_softc {struct my_list_data* my_ldata; struct my_chain_data my_cdata; } ;
struct my_list_data {int * my_tx_list; } ;
struct TYPE_2__ {struct TYPE_2__* my_nextdesc; int * my_ptr; } ;


 int MY_LOCK_ASSERT (struct my_softc*) ;
 int MY_TX_LIST_CNT ;

__attribute__((used)) static int
my_list_tx_init(struct my_softc * sc)
{
 struct my_chain_data *cd;
 struct my_list_data *ld;
 int i;

 MY_LOCK_ASSERT(sc);
 cd = &sc->my_cdata;
 ld = sc->my_ldata;
 for (i = 0; i < MY_TX_LIST_CNT; i++) {
  cd->my_tx_chain[i].my_ptr = &ld->my_tx_list[i];
  if (i == (MY_TX_LIST_CNT - 1))
   cd->my_tx_chain[i].my_nextdesc = &cd->my_tx_chain[0];
  else
   cd->my_tx_chain[i].my_nextdesc =
       &cd->my_tx_chain[i + 1];
 }
 cd->my_tx_free = &cd->my_tx_chain[0];
 cd->my_tx_tail = cd->my_tx_head = ((void*)0);
 return (0);
}
