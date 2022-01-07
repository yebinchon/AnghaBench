
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int NTB_PEER_PORT_COUNT (int ) ;
 int device_get_parent (int ) ;

int
ntb_peer_port_count(device_t ntb)
{
 return (NTB_PEER_PORT_COUNT(device_get_parent(ntb)));
}
