
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int txq_count; int enp; } ;


 int efx_tx_fini (int ) ;
 int efx_tx_init (int ) ;
 int sfxge_tx_qstart (struct sfxge_softc*,int) ;
 int sfxge_tx_qstop (struct sfxge_softc*,int) ;

int
sfxge_tx_start(struct sfxge_softc *sc)
{
 int index;
 int rc;


 if ((rc = efx_tx_init(sc->enp)) != 0)
  return (rc);

 for (index = 0; index < sc->txq_count; index++) {
  if ((rc = sfxge_tx_qstart(sc, index)) != 0)
   goto fail;
 }

 return (0);

fail:
 while (--index >= 0)
  sfxge_tx_qstop(sc, index);

 efx_tx_fini(sc->enp);

 return (rc);
}
