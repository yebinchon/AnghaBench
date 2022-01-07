
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
__attribute__((used)) static int
sec_mdeu_can_handle(u_int alg)
{
 switch (alg) {
 case 134:
 case 132:
 case 133:
 case 131:
 case 130:
 case 129:
 case 128:
  return (1);
 default:
  return (0);
 }
}
