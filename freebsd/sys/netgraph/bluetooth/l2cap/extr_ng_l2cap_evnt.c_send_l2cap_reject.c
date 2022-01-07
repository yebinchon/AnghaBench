
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int16_t ;
typedef int ng_l2cap_con_p ;
typedef TYPE_1__* ng_l2cap_cmd_p ;
struct TYPE_5__ {int * aux; int ident; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int NG_L2CAP_CMD_REJ ;
 int _ng_l2cap_cmd_rej (int *,int ,int ,int ,int ,int ) ;
 int ng_l2cap_free_cmd (TYPE_1__*) ;
 int ng_l2cap_link_cmd (int ,TYPE_1__*) ;
 int ng_l2cap_lp_deliver (int ) ;
 TYPE_1__* ng_l2cap_new_cmd (int ,int *,int ,int ,int ) ;

__attribute__((used)) static int
send_l2cap_reject(ng_l2cap_con_p con, u_int8_t ident, u_int16_t reason,
  u_int16_t mtu, u_int16_t scid, u_int16_t dcid)
{
 ng_l2cap_cmd_p cmd = ((void*)0);

 cmd = ng_l2cap_new_cmd(con, ((void*)0), ident, NG_L2CAP_CMD_REJ, 0);
 if (cmd == ((void*)0))
  return (ENOMEM);

  _ng_l2cap_cmd_rej(cmd->aux, cmd->ident, reason, mtu, scid, dcid);
 if (cmd->aux == ((void*)0)) {
  ng_l2cap_free_cmd(cmd);

  return (ENOBUFS);
 }


 ng_l2cap_link_cmd(con, cmd);
 ng_l2cap_lp_deliver(con);

 return (0);
}
