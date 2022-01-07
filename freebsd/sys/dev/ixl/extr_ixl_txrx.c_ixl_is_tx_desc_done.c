
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_ring {TYPE_1__* tx_base; } ;
struct TYPE_2__ {int cmd_type_offset_bsz; } ;


 int I40E_TXD_QW1_DTYPE_MASK ;
 int I40E_TXD_QW1_DTYPE_SHIFT ;
 int I40E_TX_DESC_DTYPE_DESC_DONE ;

__attribute__((used)) static bool
ixl_is_tx_desc_done(struct tx_ring *txr, int idx)
{
 return (((txr->tx_base[idx].cmd_type_offset_bsz >> I40E_TXD_QW1_DTYPE_SHIFT)
     & I40E_TXD_QW1_DTYPE_MASK) == I40E_TX_DESC_DTYPE_DESC_DONE);
}
