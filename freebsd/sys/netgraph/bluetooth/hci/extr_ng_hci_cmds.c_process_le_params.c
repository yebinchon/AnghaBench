
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct mbuf {int dummy; } ;
typedef int ng_hci_unit_p ;


 int EINVAL ;
 int NG_FREE_M (struct mbuf*) ;
__attribute__((used)) static int
process_le_params(ng_hci_unit_p unit, u_int16_t ocf,
  struct mbuf *mcp, struct mbuf *mrp)
{
 int error = 0;

 switch (ocf){
 case 136:
 case 147:
 case 145:
 case 134:
 case 137:
 case 148:
 case 138:
 case 131:
 case 139:
 case 132:
 case 133:
 case 153:
 case 156:
 case 142:
 case 157:
 case 140:
 case 135:
 case 146:
 case 152:
 case 149:
 case 150:
 case 151:
 case 143:
 case 141:
 case 128:
 case 129:


  break;
 case 154:
 case 155:
 case 144:
 case 130:


 default:







  error = EINVAL;
  break;
 }

 NG_FREE_M(mcp);
 NG_FREE_M(mrp);

 return (error);

}
