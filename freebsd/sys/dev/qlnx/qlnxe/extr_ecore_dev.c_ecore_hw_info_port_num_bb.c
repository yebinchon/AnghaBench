
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_dev* p_dev; } ;
struct ecore_dev {int num_ports_in_engine; } ;


 scalar_t__ CHIP_REV_IS_EMUL (struct ecore_dev*) ;
 scalar_t__ CHIP_REV_IS_FPGA (struct ecore_dev*) ;
 int CNIG_REG_NW_PORT_MODE_BB ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int) ;
 scalar_t__ ECORE_IS_CMT (struct ecore_dev*) ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;

__attribute__((used)) static void ecore_hw_info_port_num_bb(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt)
{
 struct ecore_dev *p_dev = p_hwfn->p_dev;
 u32 port_mode;



 if (CHIP_REV_IS_FPGA(p_dev))
  port_mode = 4;
 else if (CHIP_REV_IS_EMUL(p_dev) && ECORE_IS_CMT(p_dev))

  port_mode = 1;
 else

 port_mode = ecore_rd(p_hwfn, p_ptt, CNIG_REG_NW_PORT_MODE_BB);

 if (port_mode < 3) {
  p_dev->num_ports_in_engine = 1;
 } else if (port_mode <= 5) {
  p_dev->num_ports_in_engine = 2;
 } else {
  DP_NOTICE(p_hwfn, 1, "PORT MODE: %d not supported\n",
     p_dev->num_ports_in_engine);


  p_dev->num_ports_in_engine = 1;
 }
}
