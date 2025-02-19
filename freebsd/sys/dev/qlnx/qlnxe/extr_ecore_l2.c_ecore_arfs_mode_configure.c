
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int rel_pf_id; TYPE_1__* p_dev; } ;
struct ecore_arfs_config_params {scalar_t__ mode; scalar_t__ ipv6; scalar_t__ ipv4; scalar_t__ udp; scalar_t__ tcp; } ;
struct TYPE_2__ {int mf_bits; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,...) ;
 scalar_t__ ECORE_FILTER_CONFIG_MODE_DISABLE ;
 int ECORE_MF_DISABLE_ARFS ;
 int ECORE_MSG_SP ;
 scalar_t__ OSAL_TEST_BIT (int ,int *) ;
 int ecore_arfs_mode_to_hsi (scalar_t__) ;
 int ecore_gft_config (struct ecore_hwfn*,struct ecore_ptt*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int ecore_gft_disable (struct ecore_hwfn*,struct ecore_ptt*,int ) ;

void ecore_arfs_mode_configure(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt,
          struct ecore_arfs_config_params *p_cfg_params)
{
 if (OSAL_TEST_BIT(ECORE_MF_DISABLE_ARFS, &p_hwfn->p_dev->mf_bits))
  return;

 if (p_cfg_params->mode != ECORE_FILTER_CONFIG_MODE_DISABLE) {
  ecore_gft_config(p_hwfn, p_ptt, p_hwfn->rel_pf_id,
     p_cfg_params->tcp,
     p_cfg_params->udp,
     p_cfg_params->ipv4,
     p_cfg_params->ipv6,
     ecore_arfs_mode_to_hsi(p_cfg_params->mode));
  DP_VERBOSE(p_hwfn, ECORE_MSG_SP,
      "Configured Filtering: tcp = %s, udp = %s, ipv4 = %s, ipv6 =%s mode=%08x\n",
      p_cfg_params->tcp ? "Enable" : "Disable",
      p_cfg_params->udp ? "Enable" : "Disable",
      p_cfg_params->ipv4 ? "Enable" : "Disable",
      p_cfg_params->ipv6 ? "Enable" : "Disable",
      (u32)p_cfg_params->mode);
 } else {
  DP_VERBOSE(p_hwfn, ECORE_MSG_SP, "Disabled Filtering\n");
  ecore_gft_disable(p_hwfn, p_ptt, p_hwfn->rel_pf_id);
 }
}
