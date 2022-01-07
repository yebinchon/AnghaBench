
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int64_t ;
struct hpt_iop_hba {int ctlcfgcmd_phy; int * ctlcfg_ptr; } ;
struct TYPE_3__ {scalar_t__ ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;



__attribute__((used)) static void hptiop_mv_map_ctlcfg(void *arg, bus_dma_segment_t *segs,
    int nsegs, int error)
{
 struct hpt_iop_hba *hba = (struct hpt_iop_hba *)arg;
 hba->ctlcfgcmd_phy = ((u_int64_t)segs->ds_addr + 0x1F)
    & ~(u_int64_t)0x1F;
 hba->ctlcfg_ptr = (u_int8_t *)(((unsigned long)hba->ctlcfg_ptr + 0x1F)
    & ~0x1F);
}
