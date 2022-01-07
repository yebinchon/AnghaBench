
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_port_attr {int dummy; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;



 int mlx5_get_vport_access_method (struct ib_device*) ;
 int mlx5_query_hca_port (struct ib_device*,int ,struct ib_port_attr*) ;
 int mlx5_query_mad_ifc_port (struct ib_device*,int ,struct ib_port_attr*) ;
 int mlx5_query_port_roce (struct ib_device*,int ,struct ib_port_attr*) ;

int mlx5_ib_query_port(struct ib_device *ibdev, u8 port,
         struct ib_port_attr *props)
{
 switch (mlx5_get_vport_access_method(ibdev)) {
 case 129:
  return mlx5_query_mad_ifc_port(ibdev, port, props);

 case 130:
  return mlx5_query_hca_port(ibdev, port, props);

 case 128:
  return mlx5_query_port_roce(ibdev, port, props);

 default:
  return -EINVAL;
 }
}
