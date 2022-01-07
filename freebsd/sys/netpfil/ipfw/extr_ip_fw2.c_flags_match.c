
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_char ;
struct TYPE_3__ {int arg1; } ;
typedef TYPE_1__ ipfw_insn ;



__attribute__((used)) static int
flags_match(ipfw_insn *cmd, u_int8_t bits)
{
 u_char want_clear;
 bits = ~bits;

 if ( ((cmd->arg1 & 0xff) & bits) != 0)
  return 0;
 want_clear = (cmd->arg1 >> 8) & 0xff;
 if ( (want_clear & bits) != want_clear)
  return 0;
 return 1;
}
