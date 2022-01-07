
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int invalidate_rkey; } ;
struct ib_send_wr {TYPE_1__ ex; int wr_id; int opcode; } ;
struct ib_mr {int rkey; } ;


 int IB_WR_LOCAL_INV ;
 int ISER_FASTREG_LI_WRID ;
 int ib_update_fast_reg_key (struct ib_mr*,int ) ;
 int iser_ib_inc_rkey (int ) ;
 int memset (struct ib_send_wr*,int ,int) ;

__attribute__((used)) static void
iser_inv_rkey(struct ib_send_wr *inv_wr, struct ib_mr *mr)
{
 u32 rkey;

 memset(inv_wr, 0, sizeof(*inv_wr));
 inv_wr->opcode = IB_WR_LOCAL_INV;
 inv_wr->wr_id = ISER_FASTREG_LI_WRID;
 inv_wr->ex.invalidate_rkey = mr->rkey;

 rkey = iser_ib_inc_rkey(mr->rkey);
 ib_update_fast_reg_key(mr, rkey);
}
