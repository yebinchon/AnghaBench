
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mbuf {int dummy; } ;
struct cgem_softc {scalar_t__ txring_queued; size_t txring_tl_ptr; int ifp; TYPE_1__* txring; int dev; struct mbuf** txring_m; int ** txring_m_dmamap; int mbuf_dma_tag; } ;
struct TYPE_2__ {int ctl; int addr; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int CGEM_ASSERT_LOCKED (struct cgem_softc*) ;
 int CGEM_TXDESC_AHB_ERR ;
 int CGEM_TXDESC_LAST_BUF ;
 int CGEM_TXDESC_LATE_COLL ;
 int CGEM_TXDESC_RETRY_ERR ;
 int CGEM_TXDESC_USED ;
 int CGEM_TXDESC_WRAP ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int bus_dmamap_destroy (int ,int *) ;
 int bus_dmamap_sync (int ,int *,int ) ;
 int bus_dmamap_unload (int ,int *) ;
 int device_printf (int ,char*,int ) ;
 int if_inc_counter (int ,int ,int) ;
 int if_setdrvflagbits (int ,int ,int ) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
cgem_clean_tx(struct cgem_softc *sc)
{
 struct mbuf *m;
 uint32_t ctl;

 CGEM_ASSERT_LOCKED(sc);


 while (sc->txring_queued > 0 &&
        ((ctl = sc->txring[sc->txring_tl_ptr].ctl) &
  CGEM_TXDESC_USED) != 0) {


  bus_dmamap_sync(sc->mbuf_dma_tag,
    sc->txring_m_dmamap[sc->txring_tl_ptr],
    BUS_DMASYNC_POSTWRITE);


  bus_dmamap_unload(sc->mbuf_dma_tag,
      sc->txring_m_dmamap[sc->txring_tl_ptr]);
  bus_dmamap_destroy(sc->mbuf_dma_tag,
       sc->txring_m_dmamap[sc->txring_tl_ptr]);
  sc->txring_m_dmamap[sc->txring_tl_ptr] = ((void*)0);


  m = sc->txring_m[sc->txring_tl_ptr];
  sc->txring_m[sc->txring_tl_ptr] = ((void*)0);
  m_freem(m);


  if ((ctl & CGEM_TXDESC_AHB_ERR) != 0) {

   device_printf(sc->dev, "cgem_clean_tx: Whoa! "
       "AHB error, addr=0x%x\n",
       sc->txring[sc->txring_tl_ptr].addr);
  } else if ((ctl & (CGEM_TXDESC_RETRY_ERR |
       CGEM_TXDESC_LATE_COLL)) != 0) {
   if_inc_counter(sc->ifp, IFCOUNTER_OERRORS, 1);
  } else
   if_inc_counter(sc->ifp, IFCOUNTER_OPACKETS, 1);





  while ((ctl & CGEM_TXDESC_LAST_BUF) == 0) {
   if ((ctl & CGEM_TXDESC_WRAP) != 0)
    sc->txring_tl_ptr = 0;
   else
    sc->txring_tl_ptr++;
   sc->txring_queued--;

   ctl = sc->txring[sc->txring_tl_ptr].ctl;

   sc->txring[sc->txring_tl_ptr].ctl =
    ctl | CGEM_TXDESC_USED;
  }


  if ((ctl & CGEM_TXDESC_WRAP) != 0)
   sc->txring_tl_ptr = 0;
  else
   sc->txring_tl_ptr++;
  sc->txring_queued--;

  if_setdrvflagbits(sc->ifp, 0, IFF_DRV_OACTIVE);
 }
}
