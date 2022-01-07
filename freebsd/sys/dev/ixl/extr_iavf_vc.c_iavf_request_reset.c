
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_sc {int hw; } ;


 int I40E_VFGEN_RSTAT ;
 int VIRTCHNL_OP_RESET_VF ;
 int VIRTCHNL_VFR_INPROGRESS ;
 int iavf_send_pf_msg (struct iavf_sc*,int ,int *,int ) ;
 int wr32 (int *,int ,int ) ;

int
iavf_request_reset(struct iavf_sc *sc)
{





 wr32(&sc->hw, I40E_VFGEN_RSTAT, VIRTCHNL_VFR_INPROGRESS);
 iavf_send_pf_msg(sc, VIRTCHNL_OP_RESET_VF, ((void*)0), 0);
 return (0);
}
