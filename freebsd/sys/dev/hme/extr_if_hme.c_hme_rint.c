
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {unsigned int rb_rdtail; int rb_rxd; } ;
struct hme_softc {int sc_flags; TYPE_1__ sc_rb; int sc_cdmamap; int sc_cdmatag; int sc_dev; struct ifnet* sc_ifp; } ;
typedef int caddr_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CTR2 (int ,char*,unsigned int,int) ;
 unsigned int HME_NRXDESC ;
 int HME_PCI ;
 unsigned int HME_XD_DECODE_RSIZE (int) ;
 int HME_XD_GETFLAGS (int,int ,unsigned int) ;
 int HME_XD_OFL ;
 int HME_XD_OWN ;
 int IFCOUNTER_IERRORS ;
 int KTR_HME ;
 int bus_dmamap_sync (int ,int ,int) ;
 int device_printf (int ,char*,unsigned int,int) ;
 int hme_discard_rxbuf (struct hme_softc*,unsigned int) ;
 int hme_read (struct hme_softc*,unsigned int,unsigned int,int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;

__attribute__((used)) static void
hme_rint(struct hme_softc *sc)
{
 caddr_t xdr = sc->sc_rb.rb_rxd;
 struct ifnet *ifp = sc->sc_ifp;
 unsigned int ri, len;
 int progress = 0;
 u_int32_t flags;




 bus_dmamap_sync(sc->sc_cdmatag, sc->sc_cdmamap, BUS_DMASYNC_POSTREAD);
 for (ri = sc->sc_rb.rb_rdtail;; ri = (ri + 1) % HME_NRXDESC) {
  flags = HME_XD_GETFLAGS(sc->sc_flags & HME_PCI, xdr, ri);
  CTR2(KTR_HME, "hme_rint: index %d, flags %#x", ri, flags);
  if ((flags & HME_XD_OWN) != 0)
   break;

  progress++;
  if ((flags & HME_XD_OFL) != 0) {
   device_printf(sc->sc_dev, "buffer overflow, ri=%d; "
       "flags=0x%x\n", ri, flags);
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   hme_discard_rxbuf(sc, ri);
  } else {
   len = HME_XD_DECODE_RSIZE(flags);
   hme_read(sc, ri, len, flags);
  }
 }
 if (progress) {
  bus_dmamap_sync(sc->sc_cdmatag, sc->sc_cdmamap,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 }
 sc->sc_rb.rb_rdtail = ri;
}
