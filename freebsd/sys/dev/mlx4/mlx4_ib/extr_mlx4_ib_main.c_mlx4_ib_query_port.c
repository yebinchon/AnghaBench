
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_port_attr {int dummy; } ;
struct ib_device {int dummy; } ;


 int __mlx4_ib_query_port (struct ib_device*,int ,struct ib_port_attr*,int ) ;

__attribute__((used)) static int mlx4_ib_query_port(struct ib_device *ibdev, u8 port,
         struct ib_port_attr *props)
{

 return __mlx4_ib_query_port(ibdev, port, props, 0);
}
