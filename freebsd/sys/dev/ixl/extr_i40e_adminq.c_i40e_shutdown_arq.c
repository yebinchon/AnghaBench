
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; int bah; int bal; int len; int tail; int head; } ;
struct TYPE_4__ {int arq_spinlock; TYPE_1__ arq; } ;
struct i40e_hw {TYPE_2__ aq; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_ERR_NOT_READY ;
 int I40E_SUCCESS ;
 int i40e_acquire_spinlock (int *) ;
 int i40e_free_arq_bufs (struct i40e_hw*) ;
 int i40e_release_spinlock (int *) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

enum i40e_status_code i40e_shutdown_arq(struct i40e_hw *hw)
{
 enum i40e_status_code ret_code = I40E_SUCCESS;

 i40e_acquire_spinlock(&hw->aq.arq_spinlock);

 if (hw->aq.arq.count == 0) {
  ret_code = I40E_ERR_NOT_READY;
  goto shutdown_arq_out;
 }


 wr32(hw, hw->aq.arq.head, 0);
 wr32(hw, hw->aq.arq.tail, 0);
 wr32(hw, hw->aq.arq.len, 0);
 wr32(hw, hw->aq.arq.bal, 0);
 wr32(hw, hw->aq.arq.bah, 0);

 hw->aq.arq.count = 0;


 i40e_free_arq_bufs(hw);

shutdown_arq_out:
 i40e_release_spinlock(&hw->aq.arq_spinlock);
 return ret_code;
}
