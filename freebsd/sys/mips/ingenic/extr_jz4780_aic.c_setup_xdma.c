
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sc_pcminfo {struct aic_softc* sc; struct sc_chinfo* chan; } ;
struct sc_chinfo {int buffer; } ;
struct TYPE_2__ {int src_width; int dst_width; int block_num; int block_len; int dst_addr; int src_addr; int direction; int req_type; int operation; } ;
struct aic_softc {int xchan; int dev; TYPE_1__ req; int aic_fifo_paddr; int buf_base_phys; } ;


 int AFMT_16BIT ;
 int KASSERT (int,char*) ;
 int XDMA_CMD_BEGIN ;
 int XDMA_CYCLIC ;
 int XDMA_MEM_TO_DEV ;
 int XR_TYPE_PHYS ;
 int device_printf (int ,char*) ;
 int sndbuf_getblkcnt (int ) ;
 int sndbuf_getblksz (int ) ;
 int sndbuf_getfmt (int ) ;
 int xdma_control (int ,int ) ;
 int xdma_request (int ,TYPE_1__*) ;

__attribute__((used)) static int
setup_xdma(struct sc_pcminfo *scp)
{
 struct aic_softc *sc;
 struct sc_chinfo *ch;
 int fmt;
 int err;

 ch = &scp->chan[0];
 sc = scp->sc;

 fmt = sndbuf_getfmt(ch->buffer);

 KASSERT(fmt & AFMT_16BIT, ("16-bit audio supported only."));

 sc->req.operation = XDMA_CYCLIC;
 sc->req.req_type = XR_TYPE_PHYS;
 sc->req.direction = XDMA_MEM_TO_DEV;
 sc->req.src_addr = sc->buf_base_phys;
 sc->req.dst_addr = sc->aic_fifo_paddr;
 sc->req.src_width = 2;
 sc->req.dst_width = 2;
 sc->req.block_len = sndbuf_getblksz(ch->buffer);
 sc->req.block_num = sndbuf_getblkcnt(ch->buffer);

 err = xdma_request(sc->xchan, &sc->req);
 if (err != 0) {
  device_printf(sc->dev, "Can't configure virtual channel\n");
  return (-1);
 }

 xdma_control(sc->xchan, XDMA_CMD_BEGIN);

 return (0);
}
