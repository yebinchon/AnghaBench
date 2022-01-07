
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ipfw_insn ;


 int * find_op_rw (int *,int *,int *) ;

int
classify_opcode_kidx(ipfw_insn *cmd, uint16_t *puidx)
{

 if (find_op_rw(cmd, puidx, ((void*)0)) == ((void*)0))
  return (1);
 return (0);
}
