
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct dtsec_softc* t_Handle ;
struct dtsec_softc {int sc_rx_pool; } ;


 unsigned int DTSEC_RM_POOL_RX_HIGH_MARK ;
 unsigned int bman_count (int ) ;
 int bman_pool_fill (int ,unsigned int) ;

__attribute__((used)) static void
dtsec_rm_pool_rx_depleted(t_Handle h_App, bool in)
{
 struct dtsec_softc *sc;
 unsigned int count;

 sc = h_App;

 if (!in)
  return;

 while (1) {
  count = bman_count(sc->sc_rx_pool);
  if (count > DTSEC_RM_POOL_RX_HIGH_MARK)
   return;

  bman_pool_fill(sc->sc_rx_pool, DTSEC_RM_POOL_RX_HIGH_MARK);
 }
}
