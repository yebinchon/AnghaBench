
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int E1000_BPRC ;
 int E1000_BPTC ;
 int E1000_COLC ;
 int E1000_CRCERRS ;
 int E1000_DC ;
 int E1000_ECOL ;
 int E1000_FCRUC ;
 int E1000_GORCH ;
 int E1000_GORCL ;
 int E1000_GOTCH ;
 int E1000_GOTCL ;
 int E1000_GPRC ;
 int E1000_GPTC ;
 int E1000_LATECOL ;
 int E1000_MCC ;
 int E1000_MPC ;
 int E1000_MPRC ;
 int E1000_MPTC ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_RFC ;
 int E1000_RJC ;
 int E1000_RLEC ;
 int E1000_RNBC ;
 int E1000_ROC ;
 int E1000_RUC ;
 int E1000_SCC ;
 int E1000_SEC ;
 int E1000_SYMERRS ;
 int E1000_TORH ;
 int E1000_TORL ;
 int E1000_TOTH ;
 int E1000_TOTL ;
 int E1000_TPR ;
 int E1000_TPT ;
 int E1000_XOFFRXC ;
 int E1000_XOFFTXC ;
 int E1000_XONRXC ;
 int E1000_XONTXC ;

void e1000_clear_hw_cntrs_base_generic(struct e1000_hw *hw)
{
 DEBUGFUNC("e1000_clear_hw_cntrs_base_generic");

 E1000_READ_REG(hw, E1000_CRCERRS);
 E1000_READ_REG(hw, E1000_SYMERRS);
 E1000_READ_REG(hw, E1000_MPC);
 E1000_READ_REG(hw, E1000_SCC);
 E1000_READ_REG(hw, E1000_ECOL);
 E1000_READ_REG(hw, E1000_MCC);
 E1000_READ_REG(hw, E1000_LATECOL);
 E1000_READ_REG(hw, E1000_COLC);
 E1000_READ_REG(hw, E1000_DC);
 E1000_READ_REG(hw, E1000_SEC);
 E1000_READ_REG(hw, E1000_RLEC);
 E1000_READ_REG(hw, E1000_XONRXC);
 E1000_READ_REG(hw, E1000_XONTXC);
 E1000_READ_REG(hw, E1000_XOFFRXC);
 E1000_READ_REG(hw, E1000_XOFFTXC);
 E1000_READ_REG(hw, E1000_FCRUC);
 E1000_READ_REG(hw, E1000_GPRC);
 E1000_READ_REG(hw, E1000_BPRC);
 E1000_READ_REG(hw, E1000_MPRC);
 E1000_READ_REG(hw, E1000_GPTC);
 E1000_READ_REG(hw, E1000_GORCL);
 E1000_READ_REG(hw, E1000_GORCH);
 E1000_READ_REG(hw, E1000_GOTCL);
 E1000_READ_REG(hw, E1000_GOTCH);
 E1000_READ_REG(hw, E1000_RNBC);
 E1000_READ_REG(hw, E1000_RUC);
 E1000_READ_REG(hw, E1000_RFC);
 E1000_READ_REG(hw, E1000_ROC);
 E1000_READ_REG(hw, E1000_RJC);
 E1000_READ_REG(hw, E1000_TORL);
 E1000_READ_REG(hw, E1000_TORH);
 E1000_READ_REG(hw, E1000_TOTL);
 E1000_READ_REG(hw, E1000_TOTH);
 E1000_READ_REG(hw, E1000_TPR);
 E1000_READ_REG(hw, E1000_TPT);
 E1000_READ_REG(hw, E1000_MPTC);
 E1000_READ_REG(hw, E1000_BPTC);
}
