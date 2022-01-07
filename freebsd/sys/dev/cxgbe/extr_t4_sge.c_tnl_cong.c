
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int rx_e_chan_map; } ;



int
tnl_cong(struct port_info *pi, int drop)
{

 if (drop == -1)
  return (-1);
 else if (drop == 1)
  return (0);
 else
  return (pi->rx_e_chan_map);
}
