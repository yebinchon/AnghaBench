
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int ng_btsocket_rfcomm_disconnect (struct socket*) ;

void
ng_btsocket_rfcomm_close(struct socket *so)
{

 (void)ng_btsocket_rfcomm_disconnect(so);
}
