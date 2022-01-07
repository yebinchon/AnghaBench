
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct i40e_adminq_ring {scalar_t__ next_to_clean; scalar_t__ count; int head; } ;
struct TYPE_2__ {struct i40e_adminq_ring asq; } ;
struct i40e_hw {TYPE_1__ aq; } ;
struct i40e_asq_cmd_details {scalar_t__ callback; } ;
struct i40e_aq_desc {scalar_t__ callback; } ;
typedef int (* I40E_ADMINQ_CALLBACK ) (struct i40e_hw*,struct i40e_asq_cmd_details*) ;


 struct i40e_asq_cmd_details* I40E_ADMINQ_DESC (struct i40e_adminq_ring,scalar_t__) ;
 struct i40e_asq_cmd_details* I40E_ADMINQ_DETAILS (struct i40e_adminq_ring,scalar_t__) ;
 int I40E_DEBUG_AQ_MESSAGE ;
 scalar_t__ I40E_DESC_UNUSED (struct i40e_adminq_ring*) ;
 int I40E_DMA_MEM ;
 int I40E_DMA_TO_DMA ;
 int I40E_NONDMA_MEM ;
 int i40e_debug (struct i40e_hw*,int ,char*,scalar_t__,scalar_t__) ;
 int i40e_memcpy (struct i40e_asq_cmd_details*,struct i40e_asq_cmd_details*,int,int ) ;
 int i40e_memset (struct i40e_asq_cmd_details*,int ,int,int ) ;
 scalar_t__ rd32 (struct i40e_hw*,int ) ;

u16 i40e_clean_asq(struct i40e_hw *hw)
{
 struct i40e_adminq_ring *asq = &(hw->aq.asq);
 struct i40e_asq_cmd_details *details;
 u16 ntc = asq->next_to_clean;
 struct i40e_aq_desc desc_cb;
 struct i40e_aq_desc *desc;

 desc = I40E_ADMINQ_DESC(*asq, ntc);
 details = I40E_ADMINQ_DETAILS(*asq, ntc);
 while (rd32(hw, hw->aq.asq.head) != ntc) {
  i40e_debug(hw, I40E_DEBUG_AQ_MESSAGE,
      "ntc %d head %d.\n", ntc, rd32(hw, hw->aq.asq.head));

  if (details->callback) {
   I40E_ADMINQ_CALLBACK cb_func =
     (I40E_ADMINQ_CALLBACK)details->callback;
   i40e_memcpy(&desc_cb, desc, sizeof(struct i40e_aq_desc),
        I40E_DMA_TO_DMA);
   cb_func(hw, &desc_cb);
  }
  i40e_memset(desc, 0, sizeof(*desc), I40E_DMA_MEM);
  i40e_memset(details, 0, sizeof(*details), I40E_NONDMA_MEM);
  ntc++;
  if (ntc == asq->count)
   ntc = 0;
  desc = I40E_ADMINQ_DESC(*asq, ntc);
  details = I40E_ADMINQ_DETAILS(*asq, ntc);
 }

 asq->next_to_clean = ntc;

 return I40E_DESC_UNUSED(asq);
}
