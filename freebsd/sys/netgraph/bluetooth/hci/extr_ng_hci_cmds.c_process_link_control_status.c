
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
process_link_control_status(ng_hci_unit_p unit, ng_hci_command_status_ep *ep,
  struct mbuf *mcp)
{
 int error = 0;

 switch (NG_HCI_OCF(ep->opcode)) {
 case 141:
 case 143:
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

  break;

 case 144:
  break;

 case 148:
  break;

 case 149:
  break;

 case 140:
 case 136:
 case 142:
 case 138:
 case 139:
 case 134:
 case 135:
 default:







  error = EINVAL;
  break;
 }

 NG_FREE_M(mcp);

 return (error);
}
