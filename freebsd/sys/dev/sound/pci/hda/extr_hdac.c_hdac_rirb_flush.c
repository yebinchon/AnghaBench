
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int dma_map; int dma_tag; scalar_t__ dma_vaddr; } ;
struct hdac_softc {size_t rirb_rp; size_t rirb_size; int* unsolq; TYPE_2__ rirb_dma; TYPE_1__* codecs; int dev; int unsolq_wp; int mem; } ;
struct hdac_rirb {int response_ex; int response; } ;
typedef size_t nid_t ;
struct TYPE_3__ {scalar_t__ pending; int response; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 size_t HDAC_READ_1 (int *,int ) ;
 int HDAC_RIRBWP ;
 size_t HDAC_RIRB_RESPONSE_EX_SDATA_IN (int) ;
 int HDAC_RIRB_RESPONSE_EX_UNSOLICITED ;
 int HDAC_UNSOLQ_MAX ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int device_printf (int ,char*,size_t,int) ;
 int le32toh (int ) ;

__attribute__((used)) static int
hdac_rirb_flush(struct hdac_softc *sc)
{
 struct hdac_rirb *rirb_base, *rirb;
 nid_t cad;
 uint32_t resp, resp_ex;
 uint8_t rirbwp;
 int ret;

 rirb_base = (struct hdac_rirb *)sc->rirb_dma.dma_vaddr;
 rirbwp = HDAC_READ_1(&sc->mem, HDAC_RIRBWP);
 bus_dmamap_sync(sc->rirb_dma.dma_tag, sc->rirb_dma.dma_map,
     BUS_DMASYNC_POSTREAD);

 ret = 0;
 while (sc->rirb_rp != rirbwp) {
  sc->rirb_rp++;
  sc->rirb_rp %= sc->rirb_size;
  rirb = &rirb_base[sc->rirb_rp];
  resp = le32toh(rirb->response);
  resp_ex = le32toh(rirb->response_ex);
  cad = HDAC_RIRB_RESPONSE_EX_SDATA_IN(resp_ex);
  if (resp_ex & HDAC_RIRB_RESPONSE_EX_UNSOLICITED) {
   sc->unsolq[sc->unsolq_wp++] = resp;
   sc->unsolq_wp %= HDAC_UNSOLQ_MAX;
   sc->unsolq[sc->unsolq_wp++] = cad;
   sc->unsolq_wp %= HDAC_UNSOLQ_MAX;
  } else if (sc->codecs[cad].pending <= 0) {
   device_printf(sc->dev, "Unexpected unsolicited "
       "response from address %d: %08x\n", cad, resp);
  } else {
   sc->codecs[cad].response = resp;
   sc->codecs[cad].pending--;
  }
  ret++;
 }

 bus_dmamap_sync(sc->rirb_dma.dma_tag, sc->rirb_dma.dma_map,
     BUS_DMASYNC_PREREAD);
 return (ret);
}
