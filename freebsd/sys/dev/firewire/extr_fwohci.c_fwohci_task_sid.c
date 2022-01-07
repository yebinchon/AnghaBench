
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct firewire_comm {int dev; } ;
struct fwohci_softc {int arrq; int arrs; int atrs; int atrq; int * sid_buf; struct firewire_comm fc; } ;


 int FWOHCI_DMA_READ (int ) ;
 int M_FW ;
 int M_NOWAIT ;
 int OHCI_SIDSIZE ;
 int OHCI_SID_CNT ;
 int OHCI_SID_CNT_MASK ;
 int OHCI_SID_ERR ;
 int OREAD (struct fwohci_softc*,int ) ;
 int device_printf (int ,char*,...) ;
 int free (int *,int ) ;
 int fw_drain_txq (struct firewire_comm*) ;
 int fw_sidrcv (struct firewire_comm*,int *,int) ;
 int fwohci_arcv (struct fwohci_softc*,int *,int) ;
 int fwohci_txd (struct fwohci_softc*,int *) ;
 scalar_t__ malloc (int,int ,int ) ;

__attribute__((used)) static void
fwohci_task_sid(void *arg, int pending)
{
 struct fwohci_softc *sc = (struct fwohci_softc *)arg;
 struct firewire_comm *fc = &sc->fc;
 uint32_t *buf;
 int i, plen;






 plen = OREAD(sc, OHCI_SID_CNT);

 if (plen & OHCI_SID_ERR) {
  device_printf(fc->dev, "SID Error\n");
  return;
 }
 plen &= OHCI_SID_CNT_MASK;
 if (plen < 4 || plen > OHCI_SIDSIZE) {
  device_printf(fc->dev, "invalid SID len = %d\n", plen);
  return;
 }
 plen -= 4;
 buf = (uint32_t *)malloc(OHCI_SIDSIZE, M_FW, M_NOWAIT);
 if (buf == ((void*)0)) {
  device_printf(fc->dev, "malloc failed\n");
  return;
 }
 for (i = 0; i < plen / 4; i++)
  buf[i] = FWOHCI_DMA_READ(sc->sid_buf[i + 1]);


 fwohci_txd(sc, &sc->atrq);
 fwohci_txd(sc, &sc->atrs);
 fwohci_arcv(sc, &sc->arrs, -1);
 fwohci_arcv(sc, &sc->arrq, -1);
 fw_drain_txq(fc);
 fw_sidrcv(fc, buf, plen);
 free(buf, M_FW);
}
