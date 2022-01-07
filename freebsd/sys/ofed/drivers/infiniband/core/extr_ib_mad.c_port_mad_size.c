
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_port_private {int port_num; int device; } ;


 size_t rdma_max_mad_size (int ,int ) ;

__attribute__((used)) static size_t port_mad_size(const struct ib_mad_port_private *port_priv)
{
 return rdma_max_mad_size(port_priv->device, port_priv->port_num);
}
