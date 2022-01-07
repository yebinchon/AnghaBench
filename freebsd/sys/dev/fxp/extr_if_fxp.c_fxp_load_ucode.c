
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint16_t ;
struct ucode {scalar_t__ revision; int length; int int_delay_offset; int bundle_max_offset; int * ucode; } ;
struct TYPE_2__ {int cbl_addr; scalar_t__ cbl_list; } ;
struct fxp_softc {int flags; scalar_t__ revision; int tunable_int_delay; int tunable_bundle_max; int dev; int cbl_map; int cbl_tag; TYPE_1__ fxp_desc; } ;
struct fxp_cb_ucode {int link_addr; scalar_t__ cb_status; int * ucode; void* cb_command; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_4 (struct fxp_softc*,int ,int ) ;
 int FXP_CB_COMMAND_EL ;
 int FXP_CB_COMMAND_UCODE ;
 int FXP_CSR_SCB_GENERAL ;
 int FXP_FLAG_NO_UCODE ;
 int FXP_FLAG_UCODE ;
 int FXP_SCB_COMMAND_CU_START ;
 int FXP_TXCB_SZ ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (struct fxp_cb_ucode*,int ) ;
 int device_printf (int ,char*,int,int) ;
 int fxp_dma_wait (struct fxp_softc*,scalar_t__*,int ,int ) ;
 int fxp_scb_cmd (struct fxp_softc*,int ) ;
 int fxp_scb_wait (struct fxp_softc*) ;
 void* htole16 (int) ;
 int htole32 (int ) ;
 struct ucode* ucode_table ;

__attribute__((used)) static void
fxp_load_ucode(struct fxp_softc *sc)
{
 const struct ucode *uc;
 struct fxp_cb_ucode *cbp;
 int i;

 if (sc->flags & FXP_FLAG_NO_UCODE)
  return;

 for (uc = ucode_table; uc->ucode != ((void*)0); uc++)
  if (sc->revision == uc->revision)
   break;
 if (uc->ucode == ((void*)0))
  return;
 cbp = (struct fxp_cb_ucode *)sc->fxp_desc.cbl_list;
 cbp->cb_status = 0;
 cbp->cb_command = htole16(FXP_CB_COMMAND_UCODE | FXP_CB_COMMAND_EL);
 cbp->link_addr = 0xffffffff;
 for (i = 0; i < uc->length; i++)
  cbp->ucode[i] = htole32(uc->ucode[i]);
 if (uc->int_delay_offset)
  *(uint16_t *)&cbp->ucode[uc->int_delay_offset] =
      htole16(sc->tunable_int_delay + sc->tunable_int_delay / 2);
 if (uc->bundle_max_offset)
  *(uint16_t *)&cbp->ucode[uc->bundle_max_offset] =
      htole16(sc->tunable_bundle_max);



 fxp_scb_wait(sc);
 bus_dmamap_sync(sc->cbl_tag, sc->cbl_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 CSR_WRITE_4(sc, FXP_CSR_SCB_GENERAL, sc->fxp_desc.cbl_addr);
 fxp_scb_cmd(sc, FXP_SCB_COMMAND_CU_START);

 fxp_dma_wait(sc, &cbp->cb_status, sc->cbl_tag, sc->cbl_map);
 device_printf(sc->dev,
     "Microcode loaded, int_delay: %d usec  bundle_max: %d\n",
     sc->tunable_int_delay,
     uc->bundle_max_offset == 0 ? 0 : sc->tunable_bundle_max);
 sc->flags |= FXP_FLAG_UCODE;
 bzero(cbp, FXP_TXCB_SZ);
}
