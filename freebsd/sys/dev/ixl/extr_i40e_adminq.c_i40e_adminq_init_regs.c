
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bah; int bal; int len; int head; int tail; } ;
struct TYPE_4__ {int bah; int bal; int len; int head; int tail; } ;
struct TYPE_6__ {TYPE_2__ arq; TYPE_1__ asq; } ;
struct i40e_hw {TYPE_3__ aq; } ;


 int I40E_PF_ARQBAH ;
 int I40E_PF_ARQBAL ;
 int I40E_PF_ARQH ;
 int I40E_PF_ARQLEN ;
 int I40E_PF_ARQT ;
 int I40E_PF_ATQBAH ;
 int I40E_PF_ATQBAL ;
 int I40E_PF_ATQH ;
 int I40E_PF_ATQLEN ;
 int I40E_PF_ATQT ;
 int I40E_VF_ARQBAH1 ;
 int I40E_VF_ARQBAL1 ;
 int I40E_VF_ARQH1 ;
 int I40E_VF_ARQLEN1 ;
 int I40E_VF_ARQT1 ;
 int I40E_VF_ATQBAH1 ;
 int I40E_VF_ATQBAL1 ;
 int I40E_VF_ATQH1 ;
 int I40E_VF_ATQLEN1 ;
 int I40E_VF_ATQT1 ;
 scalar_t__ i40e_is_vf (struct i40e_hw*) ;

__attribute__((used)) static void i40e_adminq_init_regs(struct i40e_hw *hw)
{

 if (i40e_is_vf(hw)) {
  hw->aq.asq.tail = I40E_VF_ATQT1;
  hw->aq.asq.head = I40E_VF_ATQH1;
  hw->aq.asq.len = I40E_VF_ATQLEN1;
  hw->aq.asq.bal = I40E_VF_ATQBAL1;
  hw->aq.asq.bah = I40E_VF_ATQBAH1;
  hw->aq.arq.tail = I40E_VF_ARQT1;
  hw->aq.arq.head = I40E_VF_ARQH1;
  hw->aq.arq.len = I40E_VF_ARQLEN1;
  hw->aq.arq.bal = I40E_VF_ARQBAL1;
  hw->aq.arq.bah = I40E_VF_ARQBAH1;
 } else {
  hw->aq.asq.tail = I40E_PF_ATQT;
  hw->aq.asq.head = I40E_PF_ATQH;
  hw->aq.asq.len = I40E_PF_ATQLEN;
  hw->aq.asq.bal = I40E_PF_ATQBAL;
  hw->aq.asq.bah = I40E_PF_ATQBAH;
  hw->aq.arq.tail = I40E_PF_ARQT;
  hw->aq.arq.head = I40E_PF_ARQH;
  hw->aq.arq.len = I40E_PF_ARQLEN;
  hw->aq.arq.bal = I40E_PF_ARQBAL;
  hw->aq.arq.bah = I40E_PF_ARQBAH;
 }
}
