
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; struct ecore_ptt* p_dpc_ptt; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DORQ_REG_DB_DROP_DETAILS ;
 int DORQ_REG_DB_DROP_DETAILS_ADDRESS ;
 int DORQ_REG_DB_DROP_DETAILS_REASON ;
 int DORQ_REG_DB_DROP_DETAILS_REL ;
 int DORQ_REG_DB_DROP_REASON ;
 int DORQ_REG_INT_STS ;
 int DORQ_REG_INT_STS_DB_DROP ;
 int DORQ_REG_INT_STS_DORQ_FIFO_AFULL ;
 int DORQ_REG_INT_STS_DORQ_FIFO_OVFL_ERR ;
 int DORQ_REG_INT_STS_WR ;
 int DORQ_REG_PF_OVFL_STICKY ;
 int DP_INFO (struct ecore_hwfn*,char*) ;
 int DP_NOTICE (int ,int,char*,int,...) ;
 int ECORE_DORQ_ATTENTION_OPAQUE ;
 int ECORE_DORQ_ATTENTION_REASON_MASK ;
 int ECORE_DORQ_ATTENTION_SIZE ;
 int ECORE_INVAL ;
 int ECORE_SUCCESS ;
 int GET_FIELD (int,int ) ;
 int ecore_db_rec_attn (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

__attribute__((used)) static enum _ecore_status_t ecore_dorq_attn_cb(struct ecore_hwfn *p_hwfn)
{
 u32 int_sts, first_drop_reason, details, address, overflow,
  all_drops_reason;
 struct ecore_ptt *p_ptt = p_hwfn->p_dpc_ptt;
 enum _ecore_status_t rc;

 int_sts = ecore_rd(p_hwfn, p_ptt, DORQ_REG_INT_STS);
 DP_NOTICE(p_hwfn->p_dev, 0, "DORQ attention. int_sts was %x\n",
    int_sts);






 if (!(int_sts & ~DORQ_REG_INT_STS_DORQ_FIFO_AFULL))
  return ECORE_SUCCESS;


 if (int_sts & (DORQ_REG_INT_STS_DB_DROP |
         DORQ_REG_INT_STS_DORQ_FIFO_OVFL_ERR)) {


  first_drop_reason = ecore_rd(p_hwfn, p_ptt,
      DORQ_REG_DB_DROP_REASON) &
      ECORE_DORQ_ATTENTION_REASON_MASK;
  details = ecore_rd(p_hwfn, p_ptt,
       DORQ_REG_DB_DROP_DETAILS);
  address = ecore_rd(p_hwfn, p_ptt,
       DORQ_REG_DB_DROP_DETAILS_ADDRESS);
  overflow = ecore_rd(p_hwfn, p_ptt,
        DORQ_REG_PF_OVFL_STICKY);
  all_drops_reason = ecore_rd(p_hwfn, p_ptt,
         DORQ_REG_DB_DROP_DETAILS_REASON);


  DP_NOTICE(p_hwfn->p_dev, 0,
     "Doorbell drop occurred\n"
     "Address\t\t0x%08x\t(second BAR address)\n"
     "FID\t\t0x%04x\t\t(Opaque FID)\n"
     "Size\t\t0x%04x\t\t(in bytes)\n"
     "1st drop reason\t0x%08x\t(details on first drop since last handling)\n"
     "Sticky reasons\t0x%08x\t(all drop reasons since last handling)\n"
     "Overflow\t0x%x\t\t(a per PF indication)\n",
     address, GET_FIELD(details, ECORE_DORQ_ATTENTION_OPAQUE),
     GET_FIELD(details, ECORE_DORQ_ATTENTION_SIZE) * 4,
     first_drop_reason, all_drops_reason, overflow);


  if (overflow) {
   rc = ecore_db_rec_attn(p_hwfn, p_ptt);
   if (rc != ECORE_SUCCESS)
    return rc;
  }


  ecore_wr(p_hwfn, p_ptt, DORQ_REG_DB_DROP_DETAILS_REL, 0);




  ecore_wr(p_hwfn, p_ptt, DORQ_REG_INT_STS_WR,
    DORQ_REG_INT_STS_DB_DROP | DORQ_REG_INT_STS_DORQ_FIFO_OVFL_ERR);


  if ((int_sts & ~(DORQ_REG_INT_STS_DB_DROP |
     DORQ_REG_INT_STS_DORQ_FIFO_OVFL_ERR |
     DORQ_REG_INT_STS_DORQ_FIFO_AFULL)) == 0)
   return ECORE_SUCCESS;
 }


 DP_INFO(p_hwfn, "DORQ fatal attention\n");

 return ECORE_INVAL;
}
