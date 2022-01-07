
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct mbuf {int dummy; } ;
struct dtsec_softc {int sc_txph; TYPE_2__* sc_ifnet; TYPE_1__* sc_mii; } ;
struct TYPE_4__ {int if_drv_flags; int if_snd; } ;
struct TYPE_3__ {int mii_media_status; } ;


 int DTSEC_LOCK_ASSERT (struct dtsec_softc*) ;
 int E_OK ;
 int FM_PORT_ImTx (int ,int *,int ,int ,int *) ;
 int IFF_DRV_RUNNING ;
 int IFM_ACTIVE ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int TRUE ;
 int XX_FreeSmart (int *) ;
 int * XX_MallocSmart (int ,int ,int) ;
 int m_copydata (struct mbuf*,int ,int ,int *) ;
 int m_freem (struct mbuf*) ;
 int m_length (struct mbuf*,int *) ;

void
dtsec_im_if_start_locked(struct dtsec_softc *sc)
{
 uint8_t *buffer;
 uint16_t length;
 struct mbuf *m;
 int error;

 DTSEC_LOCK_ASSERT(sc);


 if ((sc->sc_mii->mii_media_status & IFM_ACTIVE) == 0)
  return;

 if ((sc->sc_ifnet->if_drv_flags & IFF_DRV_RUNNING) != IFF_DRV_RUNNING)
  return;

 while (!IFQ_DRV_IS_EMPTY(&sc->sc_ifnet->if_snd)) {
  IFQ_DRV_DEQUEUE(&sc->sc_ifnet->if_snd, m);
  if (m == ((void*)0))
   break;

  length = m_length(m, ((void*)0));
  buffer = XX_MallocSmart(length, 0, sizeof(void *));
  if (!buffer) {
   m_freem(m);
   break;
  }

  m_copydata(m, 0, length, buffer);
  m_freem(m);

  error = FM_PORT_ImTx(sc->sc_txph, buffer, length, TRUE, buffer);
  if (error != E_OK) {

   XX_FreeSmart(buffer);
   break;
  }
 }
}
