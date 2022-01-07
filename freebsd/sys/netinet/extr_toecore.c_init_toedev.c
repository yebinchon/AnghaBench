
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toedev {int tod_alloc_tls_session; int tod_tcp_info; int tod_ctloutput; int tod_offload_socket; int tod_syncache_respond; int tod_syncache_removed; int tod_syncache_added; int tod_route_redirect; int tod_l2_update; int tod_pcb_detach; void* tod_send_fin; void* tod_send_rst; void* tod_output; int tod_rcvd; int tod_input; int tod_listen_stop; int tod_listen_start; int tod_connect; int * tod_softc; } ;


 int toedev_alloc_tls_session ;
 int toedev_connect ;
 int toedev_ctloutput ;
 int toedev_input ;
 int toedev_l2_update ;
 int toedev_listen_start ;
 int toedev_listen_stop ;
 int toedev_offload_socket ;
 void* toedev_output ;
 int toedev_pcb_detach ;
 int toedev_rcvd ;
 int toedev_route_redirect ;
 int toedev_syncache_added ;
 int toedev_syncache_removed ;
 int toedev_syncache_respond ;
 int toedev_tcp_info ;

void
init_toedev(struct toedev *tod)
{

 tod->tod_softc = ((void*)0);






 tod->tod_connect = toedev_connect;
 tod->tod_listen_start = toedev_listen_start;
 tod->tod_listen_stop = toedev_listen_stop;
 tod->tod_input = toedev_input;
 tod->tod_rcvd = toedev_rcvd;
 tod->tod_output = toedev_output;
 tod->tod_send_rst = toedev_output;
 tod->tod_send_fin = toedev_output;
 tod->tod_pcb_detach = toedev_pcb_detach;
 tod->tod_l2_update = toedev_l2_update;
 tod->tod_route_redirect = toedev_route_redirect;
 tod->tod_syncache_added = toedev_syncache_added;
 tod->tod_syncache_removed = toedev_syncache_removed;
 tod->tod_syncache_respond = toedev_syncache_respond;
 tod->tod_offload_socket = toedev_offload_socket;
 tod->tod_ctloutput = toedev_ctloutput;
 tod->tod_tcp_info = toedev_tcp_info;
 tod->tod_alloc_tls_session = toedev_alloc_tls_session;
}
