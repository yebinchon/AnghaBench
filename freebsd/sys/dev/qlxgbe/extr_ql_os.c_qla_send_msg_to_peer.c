
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int msg_from_peer; scalar_t__ peer_dev; } ;
typedef TYPE_1__ qla_host_t ;


 TYPE_1__* device_get_softc (scalar_t__) ;

__attribute__((used)) static void
qla_send_msg_to_peer(qla_host_t *ha, uint32_t msg_to_peer)
{
 qla_host_t *ha_peer;

 if (ha->peer_dev) {
         if ((ha_peer = device_get_softc(ha->peer_dev)) != ((void*)0)) {

   ha_peer->msg_from_peer = msg_to_peer;
  }
 }
}
