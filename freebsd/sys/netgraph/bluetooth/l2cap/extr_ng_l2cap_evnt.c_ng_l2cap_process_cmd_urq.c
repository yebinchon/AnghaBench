
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef TYPE_1__* ng_l2cap_con_p ;
struct TYPE_4__ {int rx_pkt; } ;


 int NG_FREE_M (int ) ;
 int NG_L2CAP_UPDATE_PARAM_ACCEPT ;
 int send_l2cap_param_urs (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int ng_l2cap_process_cmd_urq(ng_l2cap_con_p con, uint8_t ident)
{

 send_l2cap_param_urs(con, ident, NG_L2CAP_UPDATE_PARAM_ACCEPT);
 NG_FREE_M(con->rx_pkt);
 return 0;
}
