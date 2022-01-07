
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int phandle_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
struct TYPE_2__ {int ocd_data; int * ocd_str; } ;


 int MTK_DEFAULT_BASE ;
 int MTK_DEFAULT_SIZE ;
 int MTK_MT7621_BASE ;
 int MTK_RT2880_BASE ;
 int MTK_SOC_UNKNOWN ;
 int MTK_UARTDIV_2 ;
 int MTK_UARTDIV_3 ;
 int MTK_UART_CLK_40MHZ ;
 int MTK_UART_CLK_50MHZ ;
 int OF_finddevice (char*) ;
 int SYSCTL_CHIPID0_3 ;
 int SYSCTL_CHIPID4_7 ;
 scalar_t__ bus_space_map (int ,int ,int ,int ,int *) ;
 void* bus_space_read_4 (int ,int ,int ) ;
 int bus_space_unmap (int ,int ,int ) ;
 TYPE_1__* compat_data ;
 int fdtbus_bs_tag ;
 int mtk_detect_cpuclk_mt7620 (int ,int ) ;
 int mtk_detect_cpuclk_mt7621 (int ,int ) ;
 int mtk_detect_cpuclk_mt7628 (int ,int ) ;
 int mtk_detect_cpuclk_rt2880 (int ,int ) ;
 int mtk_detect_cpuclk_rt305x (int ,int ) ;
 int mtk_detect_cpuclk_rt3352 (int ,int ) ;
 int mtk_detect_cpuclk_rt3883 (int ,int ) ;
 int mtk_detect_cpuclk_rt5350 (int ,int ) ;
 void* mtk_soc_chipid0_3 ;
 void* mtk_soc_chipid4_7 ;
 int mtk_soc_cpuclk ;
 int mtk_soc_socid ;
 int mtk_soc_timerclk ;
 int mtk_soc_uartclk ;
 scalar_t__ ofw_bus_node_is_compatible (int,int *) ;

void
mtk_soc_try_early_detect(void)
{
 bus_space_tag_t bst;
 bus_space_handle_t bsh;
 uint32_t base;
 phandle_t node;
 int i;

 if ((node = OF_finddevice("/")) == -1)
  return;

 for (i = 0; compat_data[i].ocd_str != ((void*)0); i++) {
  if (ofw_bus_node_is_compatible(node, compat_data[i].ocd_str)) {
   mtk_soc_socid = compat_data[i].ocd_data;
   break;
  }
 }

 if (mtk_soc_socid == MTK_SOC_UNKNOWN) {

  return;
 }

 bst = fdtbus_bs_tag;
 if (mtk_soc_socid == 135)
  base = MTK_RT2880_BASE;
 else if (mtk_soc_socid == 138)
  base = MTK_MT7621_BASE;
 else
  base = MTK_DEFAULT_BASE;

 if (bus_space_map(bst, base, MTK_DEFAULT_SIZE, 0, &bsh))
  return;


 mtk_soc_chipid0_3 = bus_space_read_4(bst, bsh, SYSCTL_CHIPID0_3);
 mtk_soc_chipid4_7 = bus_space_read_4(bst, bsh, SYSCTL_CHIPID4_7);


 switch (mtk_soc_socid) {
 case 135:
  mtk_soc_cpuclk = mtk_detect_cpuclk_rt2880(bst, bsh);
  break;
 case 134:
 case 133:
 case 132:
  mtk_soc_cpuclk = mtk_detect_cpuclk_rt305x(bst, bsh);
  break;
 case 131:
  mtk_soc_cpuclk = mtk_detect_cpuclk_rt3352(bst, bsh);
  break;
 case 130:
 case 129:
  mtk_soc_cpuclk = mtk_detect_cpuclk_rt3883(bst, bsh);
  break;
 case 128:
  mtk_soc_cpuclk = mtk_detect_cpuclk_rt5350(bst, bsh);
  break;
 case 140:
 case 139:
  mtk_soc_cpuclk = mtk_detect_cpuclk_mt7620(bst, bsh);
  break;
 case 138:
  mtk_soc_cpuclk = mtk_detect_cpuclk_mt7621(bst, bsh);
  break;
 case 137:
 case 136:
  mtk_soc_cpuclk = mtk_detect_cpuclk_mt7628(bst, bsh);
  break;
 default:

  break;
 }


 if (mtk_soc_socid == 138) {
  mtk_soc_timerclk = mtk_soc_cpuclk / 2;

 } else {




  mtk_soc_timerclk = mtk_soc_cpuclk / 2;
 }

 switch (mtk_soc_socid) {
 case 135:
  mtk_soc_uartclk = mtk_soc_cpuclk / MTK_UARTDIV_2;
  break;
 case 132:
 case 134:
 case 133:

  mtk_soc_uartclk = mtk_soc_cpuclk / MTK_UARTDIV_3;
  break;
 case 131:
 case 130:
 case 129:
 case 128:
 case 140:
 case 139:
 case 137:
 case 136:

  mtk_soc_uartclk = MTK_UART_CLK_40MHZ;
  break;
 case 138:

  mtk_soc_uartclk = MTK_UART_CLK_50MHZ;
  break;
 default:

  break;
 }

 bus_space_unmap(bst, bsh, MTK_DEFAULT_SIZE);
}
