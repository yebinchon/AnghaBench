
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct sc_info {size_t type; int ctrlbase; int* pbase; int pbankbase; int pbanksize; scalar_t__ rchn; scalar_t__ pchn; struct pbank** pbank; struct rbank* rbank; int * regbase; int dev; int map; int control_dmat; } ;
struct rbank {int dummy; } ;
struct pbank {int dummy; } ;
struct TYPE_2__ {int* mcode; } ;


 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int DELAY (int) ;
 int DS1_CHANS ;
 int* DspInst ;
 scalar_t__ YDSXGR_CTRLINSTRAM ;
 scalar_t__ YDSXGR_DSPINSTRAM ;
 scalar_t__ YDSXGR_EFFCTRLBASE ;
 scalar_t__ YDSXGR_EFFCTRLSIZE ;
 scalar_t__ YDSXGR_GLOBALCTRL ;
 scalar_t__ YDSXGR_MAPOFEFFECT ;
 scalar_t__ YDSXGR_MAPOFREC ;
 scalar_t__ YDSXGR_MODE ;
 scalar_t__ YDSXGR_NATIVEADCINVOL ;
 scalar_t__ YDSXGR_NATIVEDACINVOL ;
 scalar_t__ YDSXGR_NATIVEDACOUTVOL ;
 scalar_t__ YDSXGR_PLAYCTRLBASE ;
 scalar_t__ YDSXGR_PLAYCTRLSIZE ;
 scalar_t__ YDSXGR_RECCTRLBASE ;
 scalar_t__ YDSXGR_RECCTRLSIZE ;
 scalar_t__ YDSXGR_WORKBASE ;
 scalar_t__ YDSXGR_WORKSIZE ;
 int YDSXG_CTRLLENGTH ;
 int YDSXG_DSPLENGTH ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,void*,int,int ,struct sc_info*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*,int,...) ;
 TYPE_1__* ds_devs ;
 int ds_enadsp (struct sc_info*,int) ;
 int ds_rd (struct sc_info*,scalar_t__,int) ;
 int ds_setmap ;
 int ds_wr (struct sc_info*,scalar_t__,int,int) ;
 int wrl (struct sc_info*,int*,int) ;

__attribute__((used)) static int
ds_init(struct sc_info *sc)
{
 int i;
 u_int32_t *ci, r, pcs, rcs, ecs, ws, memsz, cb;
 u_int8_t *t;
 void *buf;

 ci = ds_devs[sc->type].mcode;

 ds_wr(sc, YDSXGR_NATIVEDACOUTVOL, 0x00000000, 4);
 ds_enadsp(sc, 0);
 ds_wr(sc, YDSXGR_MODE, 0x00010000, 4);
 ds_wr(sc, YDSXGR_MODE, 0x00000000, 4);
 ds_wr(sc, YDSXGR_MAPOFREC, 0x00000000, 4);
 ds_wr(sc, YDSXGR_MAPOFEFFECT, 0x00000000, 4);
 ds_wr(sc, YDSXGR_PLAYCTRLBASE, 0x00000000, 4);
 ds_wr(sc, YDSXGR_RECCTRLBASE, 0x00000000, 4);
 ds_wr(sc, YDSXGR_EFFCTRLBASE, 0x00000000, 4);
 r = ds_rd(sc, YDSXGR_GLOBALCTRL, 2);
 ds_wr(sc, YDSXGR_GLOBALCTRL, r & ~0x0007, 2);

 for (i = 0; i < YDSXG_DSPLENGTH; i += 4)
  ds_wr(sc, YDSXGR_DSPINSTRAM + i, DspInst[i >> 2], 4);

 for (i = 0; i < YDSXG_CTRLLENGTH; i += 4)
  ds_wr(sc, YDSXGR_CTRLINSTRAM + i, ci[i >> 2], 4);

 ds_enadsp(sc, 1);

 pcs = 0;
 for (i = 100; i > 0; i--) {
  pcs = ds_rd(sc, YDSXGR_PLAYCTRLSIZE, 4) << 2;
  if (pcs == sizeof(struct pbank))
   break;
  DELAY(1000);
 }
 if (pcs != sizeof(struct pbank)) {
  device_printf(sc->dev, "preposterous playctrlsize (%d)\n", pcs);
  return -1;
 }
 rcs = ds_rd(sc, YDSXGR_RECCTRLSIZE, 4) << 2;
 ecs = ds_rd(sc, YDSXGR_EFFCTRLSIZE, 4) << 2;
 ws = ds_rd(sc, YDSXGR_WORKSIZE, 4) << 2;

 memsz = 64 * 2 * pcs + 2 * 2 * rcs + 5 * 2 * ecs + ws;
 memsz += (64 + 1) * 4;

 if (sc->regbase == ((void*)0)) {
  if (bus_dma_tag_create(bus_get_dma_tag(sc->dev), 2, 0,
           BUS_SPACE_MAXADDR_32BIT,
           BUS_SPACE_MAXADDR,
           ((void*)0), ((void*)0), memsz, 1, memsz, 0, ((void*)0),
           ((void*)0), &sc->control_dmat))
   return -1;
  if (bus_dmamem_alloc(sc->control_dmat, &buf, BUS_DMA_NOWAIT, &sc->map))
   return -1;
  if (bus_dmamap_load(sc->control_dmat, sc->map, buf, memsz, ds_setmap, sc, 0) || !sc->ctrlbase) {
   device_printf(sc->dev, "pcs=%d, rcs=%d, ecs=%d, ws=%d, memsz=%d\n",
                pcs, rcs, ecs, ws, memsz);
   return -1;
  }
  sc->regbase = buf;
 } else
  buf = sc->regbase;

 cb = 0;
 t = buf;
 ds_wr(sc, YDSXGR_WORKBASE, sc->ctrlbase + cb, 4);
 cb += ws;
 sc->pbase = (u_int32_t *)(t + cb);

 ds_wr(sc, YDSXGR_PLAYCTRLBASE, sc->ctrlbase + cb, 4);
 cb += (64 + 1) * 4;
 sc->rbank = (struct rbank *)(t + cb);
 ds_wr(sc, YDSXGR_RECCTRLBASE, sc->ctrlbase + cb, 4);
 cb += 2 * 2 * rcs;
 ds_wr(sc, YDSXGR_EFFCTRLBASE, sc->ctrlbase + cb, 4);
 cb += 5 * 2 * ecs;

 sc->pbankbase = sc->ctrlbase + cb;
 sc->pbanksize = pcs;
 for (i = 0; i < 64; i++) {
  wrl(sc, &sc->pbase[i + 1], 0);
  sc->pbank[i * 2] = (struct pbank *)(t + cb);

  cb += pcs;
  sc->pbank[i * 2 + 1] = (struct pbank *)(t + cb);

  cb += pcs;
 }
 wrl(sc, &sc->pbase[0], DS1_CHANS * 2);

 sc->pchn = sc->rchn = 0;
 ds_wr(sc, YDSXGR_NATIVEDACOUTVOL, 0x3fff3fff, 4);
 ds_wr(sc, YDSXGR_NATIVEADCINVOL, 0x3fff3fff, 4);
 ds_wr(sc, YDSXGR_NATIVEDACINVOL, 0x3fff3fff, 4);

 return 0;
}
