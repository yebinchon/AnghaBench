
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ minor; } ;
struct iavf_sc {TYPE_1__ version; } ;
typedef int caps ;


 int IAVF_PRINTF_VF_OFFLOAD_FLAGS ;
 int VIRTCHNL_OP_GET_VF_RESOURCES ;
 scalar_t__ VIRTCHNL_VERSION_MINOR_NO_VF_CAPS ;
 int VIRTCHNL_VF_OFFLOAD_L2 ;
 int VIRTCHNL_VF_OFFLOAD_RSS_PF ;
 int VIRTCHNL_VF_OFFLOAD_VLAN ;
 int iavf_dbg_info (struct iavf_sc*,char*,int,int ) ;
 int iavf_send_pf_msg (struct iavf_sc*,int ,int *,int) ;

int
iavf_send_vf_config_msg(struct iavf_sc *sc)
{
 u32 caps;

 caps = VIRTCHNL_VF_OFFLOAD_L2 |
     VIRTCHNL_VF_OFFLOAD_RSS_PF |
     VIRTCHNL_VF_OFFLOAD_VLAN;

 iavf_dbg_info(sc, "Sending offload flags: 0x%b\n",
     caps, IAVF_PRINTF_VF_OFFLOAD_FLAGS);

 if (sc->version.minor == VIRTCHNL_VERSION_MINOR_NO_VF_CAPS)
  return iavf_send_pf_msg(sc, VIRTCHNL_OP_GET_VF_RESOURCES,
      ((void*)0), 0);
 else
  return iavf_send_pf_msg(sc, VIRTCHNL_OP_GET_VF_RESOURCES,
      (u8 *)&caps, sizeof(caps));
}
