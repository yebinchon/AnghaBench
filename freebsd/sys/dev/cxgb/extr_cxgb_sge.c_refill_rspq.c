
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sge_rspq {int cntxt_id; } ;
typedef int adapter_t ;


 int A_SG_RSPQ_CREDIT_RETURN ;
 int V_CREDITS (int ) ;
 int V_RSPQ (int ) ;
 int t3_write_reg (int *,int ,int) ;

__attribute__((used)) static __inline void
refill_rspq(adapter_t *sc, const struct sge_rspq *q, u_int credits)
{


 t3_write_reg(sc, A_SG_RSPQ_CREDIT_RETURN,
       V_RSPQ(q->cntxt_id) | V_CREDITS(credits));
}
