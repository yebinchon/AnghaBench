
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int16_t ;
struct mbuf {int dummy; } ;
typedef TYPE_1__* ng_hci_unit_p ;
typedef TYPE_2__* ng_hci_unit_con_p ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int state; int buffer; int con_list; } ;


 int EINVAL ;
 int LIST_EMPTY (int *) ;
 TYPE_2__* LIST_FIRST (int *) ;
 int NG_FREE_M (struct mbuf*) ;
 int NG_HCI_BUFF_ACL_FREE (int ,int) ;
 int NG_HCI_BUFF_ACL_TOTAL (int ,int) ;
 int NG_HCI_BUFF_SCO_FREE (int ,int) ;
 int NG_HCI_BUFF_SCO_TOTAL (int ,int) ;
 int NG_HCI_CON_TIMEOUT_PENDING ;
 int NG_HCI_UNIT_INITED ;
 int ng_hci_con_untimeout (TYPE_2__*) ;
 int ng_hci_free_con (TYPE_2__*) ;
 int ng_hci_lp_discon_ind (TYPE_2__*,int) ;

int
process_hc_baseband_params(ng_hci_unit_p unit, u_int16_t ocf,
  struct mbuf *mcp, struct mbuf *mrp)
{
 int error = 0;

 switch (ocf) {
 case 148:
 case 149:
 case 177:
 case 158:
 case 133:
 case 179:
 case 130:
 case 145:
 case 134:
 case 157:
 case 132:
 case 136:
 case 141:
 case 173:
 case 147:
 case 170:
 case 144:
 case 128:
 case 163:
 case 138:
 case 169:
 case 143:
 case 156:
 case 131:
 case 176:
 case 175:
 case 168:
 case 142:
 case 160:
 case 135:
 case 162:
 case 137:
 case 165:
 case 139:
 case 154:
 case 155:
 case 178:
 case 171:
 case 159:
 case 161:
 case 167:
 case 152:
 case 172:
 case 146:
 case 151:
 case 174:
 case 180:
 case 164:
 case 153:
 case 129:
 case 166:
 case 140:

  break;

 case 150: {
  ng_hci_unit_con_p con = ((void*)0);
  int size;
  while (!LIST_EMPTY(&unit->con_list)) {
   con = LIST_FIRST(&unit->con_list);


   if (con->flags & NG_HCI_CON_TIMEOUT_PENDING)
    ng_hci_con_untimeout(con);


   ng_hci_lp_discon_ind(con, 0x16);
   ng_hci_free_con(con);
  }

  NG_HCI_BUFF_ACL_TOTAL(unit->buffer, size);
  NG_HCI_BUFF_ACL_FREE(unit->buffer, size);

  NG_HCI_BUFF_SCO_TOTAL(unit->buffer, size);
  NG_HCI_BUFF_SCO_FREE(unit->buffer, size);

  unit->state &= ~NG_HCI_UNIT_INITED;
  } break;

 default:
  error = EINVAL;
  break;
 }

 NG_FREE_M(mcp);
 NG_FREE_M(mrp);

 return (error);
}
