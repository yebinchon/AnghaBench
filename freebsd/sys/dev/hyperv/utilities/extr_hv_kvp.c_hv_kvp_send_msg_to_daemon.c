
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hv_kvp_msg {int dummy; } ;
struct TYPE_3__ {int hv_kvp_selinfo; int dev_sema; struct hv_kvp_msg daemon_kvp_msg; struct hv_kvp_msg* host_kvp_msg; } ;
typedef TYPE_1__ hv_kvp_sc ;


 int hv_kvp_convert_hostmsg_to_usermsg (struct hv_kvp_msg*,struct hv_kvp_msg*) ;
 int selwakeup (int *) ;
 int sema_post (int *) ;

__attribute__((used)) static void
hv_kvp_send_msg_to_daemon(hv_kvp_sc *sc)
{
 struct hv_kvp_msg *hmsg = sc->host_kvp_msg;
 struct hv_kvp_msg *umsg = &sc->daemon_kvp_msg;


 hv_kvp_convert_hostmsg_to_usermsg(hmsg, umsg);


 sema_post(&sc->dev_sema);


 selwakeup(&sc->hv_kvp_selinfo);
}
