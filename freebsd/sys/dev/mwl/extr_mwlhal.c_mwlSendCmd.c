
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mwl_hal_priv {int mh_cmdaddr; int mh_dmamap; int mh_dmat; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int MACREG_H2ARIC_BIT_DOOR_BELL ;
 int MACREG_REG_GEN_PTR ;
 int MACREG_REG_H2A_INTERRUPT_EVENTS ;
 int MACREG_REG_INT_CODE ;
 int RD4 (struct mwl_hal_priv*,int ) ;
 int WR4 (struct mwl_hal_priv*,int ,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;

__attribute__((used)) static void
mwlSendCmd(struct mwl_hal_priv *mh)
{
 uint32_t dummy;

 bus_dmamap_sync(mh->mh_dmat, mh->mh_dmamap,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 WR4(mh, MACREG_REG_GEN_PTR, mh->mh_cmdaddr);
 dummy = RD4(mh, MACREG_REG_INT_CODE);

 WR4(mh, MACREG_REG_H2A_INTERRUPT_EVENTS, MACREG_H2ARIC_BIT_DOOR_BELL);
}
