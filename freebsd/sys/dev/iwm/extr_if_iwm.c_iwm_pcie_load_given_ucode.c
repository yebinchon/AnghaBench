
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;
struct iwm_fw_img {scalar_t__ is_dual_cpus; } ;


 int IWM_CSR_RESET ;
 int IWM_DEBUG_RESET ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*,char*) ;
 int IWM_LMPM_SECURE_CPU2_HDR_MEM_SPACE ;
 int IWM_LMPM_SECURE_UCODE_LOAD_CPU2_HDR_ADDR ;
 int IWM_WRITE (struct iwm_softc*,int ,int ) ;
 int iwm_enable_interrupts (struct iwm_softc*) ;
 scalar_t__ iwm_nic_lock (struct iwm_softc*) ;
 int iwm_nic_unlock (struct iwm_softc*) ;
 int iwm_pcie_load_cpu_sections (struct iwm_softc*,struct iwm_fw_img const*,int,int*) ;
 int iwm_write_prph (struct iwm_softc*,int ,int ) ;

__attribute__((used)) static int
iwm_pcie_load_given_ucode(struct iwm_softc *sc, const struct iwm_fw_img *image)
{
 int ret = 0;
 int first_ucode_section;

 IWM_DPRINTF(sc, IWM_DEBUG_RESET, "working with %s CPU\n",
       image->is_dual_cpus ? "Dual" : "Single");


 ret = iwm_pcie_load_cpu_sections(sc, image, 1, &first_ucode_section);
 if (ret)
  return ret;

 if (image->is_dual_cpus) {

  if (iwm_nic_lock(sc)) {
   iwm_write_prph(sc,
           IWM_LMPM_SECURE_UCODE_LOAD_CPU2_HDR_ADDR,
           IWM_LMPM_SECURE_CPU2_HDR_MEM_SPACE);
   iwm_nic_unlock(sc);
  }


  ret = iwm_pcie_load_cpu_sections(sc, image, 2,
       &first_ucode_section);
  if (ret)
   return ret;
 }

 iwm_enable_interrupts(sc);


 IWM_WRITE(sc, IWM_CSR_RESET, 0);

 return 0;
}
