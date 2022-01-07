
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
typedef int ng_hci_unit_p ;
struct TYPE_3__ {int opcode; } ;
typedef TYPE_1__ ng_hci_command_status_ep ;


 int EINVAL ;
 int NG_FREE_M (struct mbuf*) ;
 int NG_HCI_OCF (int ) ;
__attribute__((used)) static int
process_le_status(ng_hci_unit_p unit,ng_hci_command_status_ep *ep,
  struct mbuf *mcp)
{
 int error = 0;

 switch (NG_HCI_OCF(ep->opcode)){
 case 154:
 case 155:
 case 144:
 case 130:


  break;

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


 default:





  error = EINVAL;
  break;
 }

 NG_FREE_M(mcp);

 return (error);

}
