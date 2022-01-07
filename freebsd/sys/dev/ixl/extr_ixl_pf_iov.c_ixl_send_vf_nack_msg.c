
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ixl_vf {int vf_num; } ;
struct ixl_pf {int hw; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_VC_DEBUG (struct ixl_pf*,int,char*,int ,int ,int ,int,int ,char const*,int) ;
 int i40e_stat_str (int *,int) ;
 int ixl_send_vf_msg (struct ixl_pf*,struct ixl_vf*,int ,int,int *,int ) ;
 int ixl_vc_opcode_str (int ) ;

__attribute__((used)) static void
ixl_send_vf_nack_msg(struct ixl_pf *pf, struct ixl_vf *vf, uint16_t op,
    enum i40e_status_code status, const char *file, int line)
{

 I40E_VC_DEBUG(pf, 1,
     "Sending NACK (op=%s[%d], err=%s[%d]) to VF-%d from %s:%d\n",
     ixl_vc_opcode_str(op), op, i40e_stat_str(&pf->hw, status),
     status, vf->vf_num, file, line);
 ixl_send_vf_msg(pf, vf, op, status, ((void*)0), 0);
}
