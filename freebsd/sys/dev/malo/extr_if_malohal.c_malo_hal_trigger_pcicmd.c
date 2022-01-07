
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct malo_hal {int mh_cmdaddr; int mh_dmamap; int mh_dmat; } ;


 int BUS_DMASYNC_PREWRITE ;
 int MALO_H2ARIC_BIT_DOOR_BELL ;
 int MALO_REG_GEN_PTR ;
 int MALO_REG_H2A_INTERRUPT_EVENTS ;
 int MALO_REG_INT_CODE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int malo_hal_read4 (struct malo_hal*,int ) ;
 int malo_hal_write4 (struct malo_hal*,int ,int) ;

__attribute__((used)) static void
malo_hal_trigger_pcicmd(struct malo_hal *mh)
{
 uint32_t dummy;

 bus_dmamap_sync(mh->mh_dmat, mh->mh_dmamap, BUS_DMASYNC_PREWRITE);

 malo_hal_write4(mh, MALO_REG_GEN_PTR, mh->mh_cmdaddr);
 dummy = malo_hal_read4(mh, MALO_REG_INT_CODE);

 malo_hal_write4(mh, MALO_REG_INT_CODE, 0x00);
 dummy = malo_hal_read4(mh, MALO_REG_INT_CODE);

 malo_hal_write4(mh, MALO_REG_H2A_INTERRUPT_EVENTS,
     MALO_H2ARIC_BIT_DOOR_BELL);
 dummy = malo_hal_read4(mh, MALO_REG_INT_CODE);
}
