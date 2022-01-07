
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_softc {TYPE_1__* sc_rxedma; int sc_rxbuf; } ;
struct ath_buf {int * bf_m; } ;
struct TYPE_2__ {struct ath_buf* m_holdbf; } ;


 size_t HAL_RX_QUEUE_HP ;
 size_t HAL_RX_QUEUE_LP ;
 int TAILQ_INSERT_TAIL (int *,struct ath_buf*,int ) ;
 int ath_rxbuf_init (struct ath_softc*,struct ath_buf*) ;
 int bf_list ;
 int m_freem (int *) ;

__attribute__((used)) static int
ath_legacy_flush_rxholdbf(struct ath_softc *sc)
{
 struct ath_buf *bf;
 bf = sc->sc_rxedma[HAL_RX_QUEUE_HP].m_holdbf;
 if (bf != ((void*)0)) {
  if (bf->bf_m != ((void*)0))
   m_freem(bf->bf_m);
  bf->bf_m = ((void*)0);
  TAILQ_INSERT_TAIL(&sc->sc_rxbuf, bf, bf_list);
  (void) ath_rxbuf_init(sc, bf);
 }
 sc->sc_rxedma[HAL_RX_QUEUE_HP].m_holdbf = ((void*)0);

 bf = sc->sc_rxedma[HAL_RX_QUEUE_LP].m_holdbf;
 if (bf != ((void*)0)) {
  if (bf->bf_m != ((void*)0))
   m_freem(bf->bf_m);
  bf->bf_m = ((void*)0);
  TAILQ_INSERT_TAIL(&sc->sc_rxbuf, bf, bf_list);
  (void) ath_rxbuf_init(sc, bf);
 }
 sc->sc_rxedma[HAL_RX_QUEUE_LP].m_holdbf = ((void*)0);

 return (0);
}
