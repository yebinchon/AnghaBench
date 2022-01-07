
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_ports; int* qp0_proxy; int * qp0_qkey; } ;
struct mlx4_dev {TYPE_1__ caps; } ;



__attribute__((used)) static int qp0_enabled_vf(struct mlx4_dev *dev, int qpn)
{
 int i;
 for (i = 0; i < dev->caps.num_ports; i++) {
  if (qpn == dev->caps.qp0_proxy[i])
   return !!dev->caps.qp0_qkey[i];
 }
 return 0;
}
