
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
process_link_control_params(ng_hci_unit_p unit, u_int16_t ocf,
  struct mbuf *mcp, struct mbuf *mrp)
{
 int error = 0;

 switch (ocf) {
 case 140:
 case 136:
 case 142:
 case 138:
 case 139:
 case 134:
 case 135:

  break;

 case 141:
 case 144:
 case 143:
 case 148:
 case 149:
 case 130:
 case 145:
 case 147:
 case 128:
 case 146:
 case 137:
 case 129:
 case 132:
 case 131:
 case 133:
 default:
  error = EINVAL;
  break;
 }

 NG_FREE_M(mcp);
 NG_FREE_M(mrp);

 return (error);
}
