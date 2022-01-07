
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_softc {int ti_cmd_saved_prodidx; } ;
struct ti_cmd_desc {int dummy; } ;


 int CSR_WRITE_4 (struct ti_softc*,scalar_t__,int) ;
 int TI_CMD_RING_CNT ;
 scalar_t__ TI_GCR_CMDRING ;
 int TI_INC (int,int ) ;
 scalar_t__ TI_MB_CMDPROD_IDX ;

__attribute__((used)) static void
ti_cmd(struct ti_softc *sc, struct ti_cmd_desc *cmd)
{
 int index;

 index = sc->ti_cmd_saved_prodidx;
 CSR_WRITE_4(sc, TI_GCR_CMDRING + (index * 4), *(uint32_t *)(cmd));
 TI_INC(index, TI_CMD_RING_CNT);
 CSR_WRITE_4(sc, TI_MB_CMDPROD_IDX, index);
 sc->ti_cmd_saved_prodidx = index;
}
