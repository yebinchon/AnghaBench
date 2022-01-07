
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_error; } ;


 int ECONNABORTED ;
 int ng_btsocket_l2cap_disconnect (struct socket*) ;

void
ng_btsocket_l2cap_abort(struct socket *so)
{
 so->so_error = ECONNABORTED;

 (void)ng_btsocket_l2cap_disconnect(so);
}
