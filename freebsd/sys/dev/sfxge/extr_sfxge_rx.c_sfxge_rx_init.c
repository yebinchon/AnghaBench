
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_intr {int n_alloc; scalar_t__ state; } ;
struct sfxge_softc {int rxq_count; struct sfxge_intr intr; } ;


 int EINVAL ;
 int ISP2 (int ) ;
 int KASSERT (int,char*) ;
 int LOG_ERR ;
 scalar_t__ SFXGE_INTR_INITIALIZED ;
 int SFXGE_LRO_PARAM (int ) ;
 int hz ;
 int log (int ,char*,int ,int ) ;
 int lro_idle_ticks ;
 int lro_table_size ;
 int sfxge_rx_qfini (struct sfxge_softc*,int) ;
 int sfxge_rx_qinit (struct sfxge_softc*,int) ;
 int sfxge_rx_stat_init (struct sfxge_softc*) ;
 int table_size ;

int
sfxge_rx_init(struct sfxge_softc *sc)
{
 struct sfxge_intr *intr;
 int index;
 int rc;
 intr = &sc->intr;

 sc->rxq_count = intr->n_alloc;

 KASSERT(intr->state == SFXGE_INTR_INITIALIZED,
     ("intr->state != SFXGE_INTR_INITIALIZED"));


 for (index = 0; index < sc->rxq_count; index++) {
  if ((rc = sfxge_rx_qinit(sc, index)) != 0)
   goto fail;
 }

 sfxge_rx_stat_init(sc);

 return (0);

fail:

 while (--index >= 0)
  sfxge_rx_qfini(sc, index);

 sc->rxq_count = 0;




 return (rc);
}
