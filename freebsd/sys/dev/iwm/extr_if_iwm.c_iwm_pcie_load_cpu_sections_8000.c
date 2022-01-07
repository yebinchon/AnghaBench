
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct iwm_softc {int dummy; } ;
struct iwm_fw_img {TYPE_1__* sec; } ;
struct TYPE_2__ {scalar_t__ offset; int data; } ;


 scalar_t__ IWM_CPU1_CPU2_SEPARATOR_SECTION ;
 int IWM_DEBUG_RESET ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*,int) ;
 int IWM_FH_UCODE_LOAD_STATUS ;
 scalar_t__ IWM_PAGING_SEPARATOR_SECTION ;
 int IWM_READ (struct iwm_softc*,int ) ;
 int IWM_UCODE_SECTION_MAX ;
 int IWM_WRITE (struct iwm_softc*,int ,int) ;
 int iwm_enable_interrupts (struct iwm_softc*) ;
 scalar_t__ iwm_nic_lock (struct iwm_softc*) ;
 int iwm_nic_unlock (struct iwm_softc*) ;
 int iwm_pcie_load_section (struct iwm_softc*,int,TYPE_1__*) ;

__attribute__((used)) static int
iwm_pcie_load_cpu_sections_8000(struct iwm_softc *sc,
 const struct iwm_fw_img *image, int cpu, int *first_ucode_section)
{
 int shift_param;
 int i, ret = 0, sec_num = 0x1;
 uint32_t val, last_read_idx = 0;

 if (cpu == 1) {
  shift_param = 0;
  *first_ucode_section = 0;
 } else {
  shift_param = 16;
  (*first_ucode_section)++;
 }

 for (i = *first_ucode_section; i < IWM_UCODE_SECTION_MAX; i++) {
  last_read_idx = i;







  if (!image->sec[i].data ||
      image->sec[i].offset == IWM_CPU1_CPU2_SEPARATOR_SECTION ||
      image->sec[i].offset == IWM_PAGING_SEPARATOR_SECTION) {
   IWM_DPRINTF(sc, IWM_DEBUG_RESET,
        "Break since Data not valid or Empty section, sec = %d\n",
        i);
   break;
  }
  ret = iwm_pcie_load_section(sc, i, &image->sec[i]);
  if (ret)
   return ret;


  if (iwm_nic_lock(sc)) {
   val = IWM_READ(sc, IWM_FH_UCODE_LOAD_STATUS);
   val = val | (sec_num << shift_param);
   IWM_WRITE(sc, IWM_FH_UCODE_LOAD_STATUS, val);
   sec_num = (sec_num << 1) | 0x1;
   iwm_nic_unlock(sc);
  }
 }

 *first_ucode_section = last_read_idx;

 iwm_enable_interrupts(sc);

 if (iwm_nic_lock(sc)) {
  if (cpu == 1)
   IWM_WRITE(sc, IWM_FH_UCODE_LOAD_STATUS, 0xFFFF);
  else
   IWM_WRITE(sc, IWM_FH_UCODE_LOAD_STATUS, 0xFFFFFFFF);
  iwm_nic_unlock(sc);
 }

 return 0;
}
