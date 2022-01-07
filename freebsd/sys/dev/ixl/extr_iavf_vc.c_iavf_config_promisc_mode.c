
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct virtchnl_promisc_info {int flags; int vsi_id; } ;
struct iavf_sc {int promisc_flags; TYPE_1__* vsi_res; } ;
typedef int pinfo ;
struct TYPE_2__ {int vsi_id; } ;


 int VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE ;
 int iavf_send_pf_msg (struct iavf_sc*,int ,int *,int) ;

int
iavf_config_promisc_mode(struct iavf_sc *sc)
{
 struct virtchnl_promisc_info pinfo;

 pinfo.vsi_id = sc->vsi_res->vsi_id;
 pinfo.flags = sc->promisc_flags;

 iavf_send_pf_msg(sc, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE,
     (u8 *)&pinfo, sizeof(pinfo));
 return (0);
}
