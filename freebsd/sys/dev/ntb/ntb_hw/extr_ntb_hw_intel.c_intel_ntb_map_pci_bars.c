
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ntb_softc {int device; TYPE_1__* bar_info; } ;
struct TYPE_3__ {int pbarxlat_off; int ssz_off; int psz_off; void* pci_resource_id; } ;


 int HAS_FEATURE (struct ntb_softc*,int ) ;
 size_t NTB_B2B_BAR_1 ;
 size_t NTB_B2B_BAR_2 ;
 size_t NTB_B2B_BAR_3 ;
 size_t NTB_CONFIG_BAR ;
 int NTB_SPLIT_BAR ;
 void* PCIR_BAR (int) ;
 int XEON_PBAR23SZ_OFFSET ;
 int XEON_PBAR2XLAT_OFFSET ;
 int XEON_PBAR4SZ_OFFSET ;
 int XEON_PBAR4XLAT_OFFSET ;
 int XEON_PBAR5SZ_OFFSET ;
 int XEON_PBAR5XLAT_OFFSET ;
 int XEON_SBAR23SZ_OFFSET ;
 int XEON_SBAR4SZ_OFFSET ;
 int XEON_SBAR5SZ_OFFSET ;
 int device_printf (int ,char*) ;
 int map_memory_window_bar (struct ntb_softc*,TYPE_1__*) ;
 int map_mmr_bar (struct ntb_softc*,TYPE_1__*) ;

__attribute__((used)) static int
intel_ntb_map_pci_bars(struct ntb_softc *ntb)
{
 int rc;

 ntb->bar_info[NTB_CONFIG_BAR].pci_resource_id = PCIR_BAR(0);
 rc = map_mmr_bar(ntb, &ntb->bar_info[NTB_CONFIG_BAR]);
 if (rc != 0)
  goto out;

 ntb->bar_info[NTB_B2B_BAR_1].pci_resource_id = PCIR_BAR(2);
 rc = map_memory_window_bar(ntb, &ntb->bar_info[NTB_B2B_BAR_1]);
 if (rc != 0)
  goto out;
 ntb->bar_info[NTB_B2B_BAR_1].psz_off = XEON_PBAR23SZ_OFFSET;
 ntb->bar_info[NTB_B2B_BAR_1].ssz_off = XEON_SBAR23SZ_OFFSET;
 ntb->bar_info[NTB_B2B_BAR_1].pbarxlat_off = XEON_PBAR2XLAT_OFFSET;

 ntb->bar_info[NTB_B2B_BAR_2].pci_resource_id = PCIR_BAR(4);
 rc = map_memory_window_bar(ntb, &ntb->bar_info[NTB_B2B_BAR_2]);
 if (rc != 0)
  goto out;
 ntb->bar_info[NTB_B2B_BAR_2].psz_off = XEON_PBAR4SZ_OFFSET;
 ntb->bar_info[NTB_B2B_BAR_2].ssz_off = XEON_SBAR4SZ_OFFSET;
 ntb->bar_info[NTB_B2B_BAR_2].pbarxlat_off = XEON_PBAR4XLAT_OFFSET;

 if (!HAS_FEATURE(ntb, NTB_SPLIT_BAR))
  goto out;

 ntb->bar_info[NTB_B2B_BAR_3].pci_resource_id = PCIR_BAR(5);
 rc = map_memory_window_bar(ntb, &ntb->bar_info[NTB_B2B_BAR_3]);
 ntb->bar_info[NTB_B2B_BAR_3].psz_off = XEON_PBAR5SZ_OFFSET;
 ntb->bar_info[NTB_B2B_BAR_3].ssz_off = XEON_SBAR5SZ_OFFSET;
 ntb->bar_info[NTB_B2B_BAR_3].pbarxlat_off = XEON_PBAR5XLAT_OFFSET;

out:
 if (rc != 0)
  device_printf(ntb->device,
      "unable to allocate pci resource\n");
 return (rc);
}
