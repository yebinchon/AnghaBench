
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iavf_sc {int dev; TYPE_1__* vf_res; } ;
struct TYPE_2__ {int vf_cap_flags; } ;


 int VIRTCHNL_VF_OFFLOAD_RSS_PF ;
 int VIRTCHNL_VF_OFFLOAD_RSS_REG ;
 int device_printf (int ,char*) ;
 int iavf_config_rss_pf (struct iavf_sc*) ;
 int iavf_config_rss_reg (struct iavf_sc*) ;
 int iavf_dbg_info (struct iavf_sc*,char*) ;

__attribute__((used)) static void
iavf_config_rss(struct iavf_sc *sc)
{
 if (sc->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_RSS_REG) {
  iavf_dbg_info(sc, "Setting up RSS using VF registers...");
  iavf_config_rss_reg(sc);
 } else if (sc->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_RSS_PF) {
  iavf_dbg_info(sc, "Setting up RSS using messages to PF...");
  iavf_config_rss_pf(sc);
 } else
  device_printf(sc->dev, "VF does not support RSS capability sent by PF.\n");
}
