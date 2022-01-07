
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int EINVAL ;
 int ntb_plx_peer_port_number (int ,int ) ;

__attribute__((used)) static int
ntb_plx_peer_port_idx(device_t dev, int port)
{
 int peer_port;

 peer_port = ntb_plx_peer_port_number(dev, 0);
 if (peer_port == -EINVAL || port != peer_port)
  return (-EINVAL);

 return (0);
}
