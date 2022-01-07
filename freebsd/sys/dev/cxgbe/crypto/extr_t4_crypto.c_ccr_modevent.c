
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int CPL_FW6_PLD ;
 int EOPNOTSUPP ;


 int * do_cpl6_fw_pld ;
 int t4_register_cpl_handler (int ,int *) ;

__attribute__((used)) static int
ccr_modevent(module_t mod, int cmd, void *arg)
{

 switch (cmd) {
 case 129:
  t4_register_cpl_handler(CPL_FW6_PLD, do_cpl6_fw_pld);
  return (0);
 case 128:
  t4_register_cpl_handler(CPL_FW6_PLD, ((void*)0));
  return (0);
 default:
  return (EOPNOTSUPP);
 }
}
