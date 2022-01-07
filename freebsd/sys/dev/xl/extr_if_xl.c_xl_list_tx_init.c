
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xl_list_data {int xl_tx_dmamap; int xl_tx_tag; scalar_t__ xl_tx_dmaaddr; int * xl_tx_list; } ;
struct xl_chain_data {int * xl_tx_head; int xl_tx_tail; TYPE_1__* xl_tx_chain; TYPE_1__* xl_tx_free; } ;
struct xl_softc {int xl_mtag; struct xl_list_data xl_ldata; struct xl_chain_data xl_cdata; } ;
struct xl_list {int dummy; } ;
struct TYPE_2__ {struct TYPE_2__* xl_next; scalar_t__ xl_phys; int xl_map; int * xl_ptr; } ;


 int BUS_DMASYNC_PREWRITE ;
 int XL_LOCK_ASSERT (struct xl_softc*) ;
 int XL_TX_LIST_CNT ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_sync (int ,int ,int ) ;

__attribute__((used)) static int
xl_list_tx_init(struct xl_softc *sc)
{
 struct xl_chain_data *cd;
 struct xl_list_data *ld;
 int error, i;

 XL_LOCK_ASSERT(sc);

 cd = &sc->xl_cdata;
 ld = &sc->xl_ldata;
 for (i = 0; i < XL_TX_LIST_CNT; i++) {
  cd->xl_tx_chain[i].xl_ptr = &ld->xl_tx_list[i];
  error = bus_dmamap_create(sc->xl_mtag, 0,
      &cd->xl_tx_chain[i].xl_map);
  if (error)
   return (error);
  cd->xl_tx_chain[i].xl_phys = ld->xl_tx_dmaaddr +
      i * sizeof(struct xl_list);
  if (i == (XL_TX_LIST_CNT - 1))
   cd->xl_tx_chain[i].xl_next = ((void*)0);
  else
   cd->xl_tx_chain[i].xl_next = &cd->xl_tx_chain[i + 1];
 }

 cd->xl_tx_free = &cd->xl_tx_chain[0];
 cd->xl_tx_tail = cd->xl_tx_head = ((void*)0);

 bus_dmamap_sync(ld->xl_tx_tag, ld->xl_tx_dmamap, BUS_DMASYNC_PREWRITE);
 return (0);
}
