
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_hwfn {int p_dpc_ptt; int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (int ,int,char*,int,int,char*,int,int ,int,char*,int) ;
 int ECORE_GRC_ATTENTION_ADDRESS_MASK ;
 int ECORE_GRC_ATTENTION_MASTER_MASK ;
 int ECORE_GRC_ATTENTION_MASTER_SHIFT ;
 int ECORE_GRC_ATTENTION_PF_MASK ;
 int ECORE_GRC_ATTENTION_PRIV_MASK ;
 int ECORE_GRC_ATTENTION_PRIV_SHIFT ;
 int ECORE_GRC_ATTENTION_PRIV_VF ;
 int ECORE_GRC_ATTENTION_RDWR_BIT ;
 int ECORE_GRC_ATTENTION_VALID_BIT ;
 int ECORE_GRC_ATTENTION_VF_MASK ;
 int ECORE_GRC_ATTENTION_VF_SHIFT ;
 int ECORE_SUCCESS ;
 int GRC_REG_TIMEOUT_ATTN_ACCESS_DATA_0 ;
 int GRC_REG_TIMEOUT_ATTN_ACCESS_DATA_1 ;
 int GRC_REG_TIMEOUT_ATTN_ACCESS_VALID ;
 int ecore_rd (struct ecore_hwfn*,int ,int ) ;
 int ecore_wr (struct ecore_hwfn*,int ,int ,int ) ;
 int grc_timeout_attn_master_to_str (int) ;

__attribute__((used)) static enum _ecore_status_t ecore_grc_attn_cb(struct ecore_hwfn *p_hwfn)
{
 u32 tmp, tmp2;




 tmp = ecore_rd(p_hwfn, p_hwfn->p_dpc_ptt,
         GRC_REG_TIMEOUT_ATTN_ACCESS_VALID);
 if (!(tmp & ECORE_GRC_ATTENTION_VALID_BIT))
  goto out;


 tmp = ecore_rd(p_hwfn, p_hwfn->p_dpc_ptt,
         GRC_REG_TIMEOUT_ATTN_ACCESS_DATA_0);
 tmp2 = ecore_rd(p_hwfn, p_hwfn->p_dpc_ptt,
   GRC_REG_TIMEOUT_ATTN_ACCESS_DATA_1);

 DP_NOTICE(p_hwfn->p_dev, 0,
    "GRC timeout [%08x:%08x] - %s Address [%08x] [Master %s] [PF: %02x %s %02x]\n",
    tmp2, tmp,
    (tmp & ECORE_GRC_ATTENTION_RDWR_BIT) ? "Write to"
             : "Read from",
    (tmp & ECORE_GRC_ATTENTION_ADDRESS_MASK) << 2,
    grc_timeout_attn_master_to_str((tmp & ECORE_GRC_ATTENTION_MASTER_MASK) >>
       ECORE_GRC_ATTENTION_MASTER_SHIFT),
    (tmp2 & ECORE_GRC_ATTENTION_PF_MASK),
    (((tmp2 & ECORE_GRC_ATTENTION_PRIV_MASK) >>
    ECORE_GRC_ATTENTION_PRIV_SHIFT) ==
    ECORE_GRC_ATTENTION_PRIV_VF) ? "VF" : "(Irrelevant:)",
    (tmp2 & ECORE_GRC_ATTENTION_VF_MASK) >>
    ECORE_GRC_ATTENTION_VF_SHIFT);

out:

 ecore_wr(p_hwfn, p_hwfn->p_dpc_ptt,
   GRC_REG_TIMEOUT_ATTN_ACCESS_VALID, 0);
 return ECORE_SUCCESS;
}
