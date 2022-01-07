
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct hifn_softc {int sc_resk; int sc_resu; int sc_dmat; struct hifn_command** sc_hifn_commands; struct hifn_dma* sc_dma; } ;
struct hifn_dma {int ** result_bufs; TYPE_1__* resr; } ;
struct hifn_command {int base_masks; scalar_t__ src_map; scalar_t__ dst_map; scalar_t__ src_m; scalar_t__ dst_m; struct cryptop* crp; } ;
struct cryptop {scalar_t__ crp_etype; scalar_t__ crp_buf; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_4__ {int hst_opackets; } ;
struct TYPE_3__ {int l; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 scalar_t__ EAGAIN ;
 void* ENOMEM ;
 int HIFN_BASE_CMD_MAC ;
 int HIFN_D_RES_RSIZE ;
 int HIFN_D_VALID ;
 int KASSERT (int ,char*) ;
 int M_DEVBUF ;
 int bus_dmamap_destroy (int ,scalar_t__) ;
 int bus_dmamap_sync (int ,scalar_t__,int) ;
 int bus_dmamap_unload (int ,scalar_t__) ;
 int crypto_done (struct cryptop*) ;
 int free (struct hifn_command*,int ) ;
 int hifn_callback (struct hifn_softc*,struct hifn_command*,int *) ;
 int hifn_init_dma (struct hifn_softc*) ;
 int hifn_init_pci_registers (struct hifn_softc*) ;
 int hifn_reset_board (struct hifn_softc*,int) ;
 TYPE_2__ hifnstats ;
 int htole32 (int ) ;
 int m_freem (scalar_t__) ;

__attribute__((used)) static void
hifn_abort(struct hifn_softc *sc)
{
 struct hifn_dma *dma = sc->sc_dma;
 struct hifn_command *cmd;
 struct cryptop *crp;
 int i, u;

 i = sc->sc_resk; u = sc->sc_resu;
 while (u != 0) {
  cmd = sc->sc_hifn_commands[i];
  KASSERT(cmd != ((void*)0), ("hifn_abort: null command slot %u", i));
  sc->sc_hifn_commands[i] = ((void*)0);
  crp = cmd->crp;

  if ((dma->resr[i].l & htole32(HIFN_D_VALID)) == 0) {

   u_int8_t *macbuf;

   if (cmd->base_masks & HIFN_BASE_CMD_MAC) {
    macbuf = dma->result_bufs[i];
    macbuf += 12;
   } else
    macbuf = ((void*)0);
   hifnstats.hst_opackets++;
   hifn_callback(sc, cmd, macbuf);
  } else {
   if (cmd->src_map == cmd->dst_map) {
    bus_dmamap_sync(sc->sc_dmat, cmd->src_map,
        BUS_DMASYNC_POSTREAD|BUS_DMASYNC_POSTWRITE);
   } else {
    bus_dmamap_sync(sc->sc_dmat, cmd->src_map,
        BUS_DMASYNC_POSTWRITE);
    bus_dmamap_sync(sc->sc_dmat, cmd->dst_map,
        BUS_DMASYNC_POSTREAD);
   }

   if (cmd->src_m != cmd->dst_m) {
    m_freem(cmd->src_m);
    crp->crp_buf = (caddr_t)cmd->dst_m;
   }


   if (cmd->src_map != cmd->dst_map) {




    crp->crp_etype = ENOMEM;
    bus_dmamap_unload(sc->sc_dmat, cmd->dst_map);
    bus_dmamap_destroy(sc->sc_dmat, cmd->dst_map);
   } else
    crp->crp_etype = ENOMEM;

   bus_dmamap_unload(sc->sc_dmat, cmd->src_map);
   bus_dmamap_destroy(sc->sc_dmat, cmd->src_map);

   free(cmd, M_DEVBUF);
   if (crp->crp_etype != EAGAIN)
    crypto_done(crp);
  }

  if (++i == HIFN_D_RES_RSIZE)
   i = 0;
  u--;
 }
 sc->sc_resk = i; sc->sc_resu = u;

 hifn_reset_board(sc, 1);
 hifn_init_dma(sc);
 hifn_init_pci_registers(sc);
}
