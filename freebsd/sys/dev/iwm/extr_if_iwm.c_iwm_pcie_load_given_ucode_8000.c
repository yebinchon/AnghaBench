
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;
struct iwm_fw_img {scalar_t__ is_dual_cpus; } ;


 int IWM_DEBUG_RESET ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*,char*) ;
 int IWM_RELEASE_CPU_RESET ;
 int IWM_RELEASE_CPU_RESET_BIT ;
 scalar_t__ iwm_nic_lock (struct iwm_softc*) ;
 int iwm_nic_unlock (struct iwm_softc*) ;
 int iwm_pcie_load_cpu_sections_8000 (struct iwm_softc*,struct iwm_fw_img const*,int,int*) ;
 int iwm_write_prph (struct iwm_softc*,int ,int ) ;

int
iwm_pcie_load_given_ucode_8000(struct iwm_softc *sc,
 const struct iwm_fw_img *image)
{
 int ret = 0;
 int first_ucode_section;

 IWM_DPRINTF(sc, IWM_DEBUG_RESET, "working with %s CPU\n",
      image->is_dual_cpus ? "Dual" : "Single");



 if (iwm_nic_lock(sc)) {
  iwm_write_prph(sc, IWM_RELEASE_CPU_RESET,
      IWM_RELEASE_CPU_RESET_BIT);
  iwm_nic_unlock(sc);
 }


 ret = iwm_pcie_load_cpu_sections_8000(sc, image, 1,
     &first_ucode_section);
 if (ret)
  return ret;


 return iwm_pcie_load_cpu_sections_8000(sc, image, 2,
     &first_ucode_section);
}
