
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct sioc_sg_req6 {int dummy; } ;
struct sioc_mif_req6 {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;


 int get_mif6_cnt (struct sioc_mif_req6*) ;
 int get_sg_cnt (struct sioc_sg_req6*) ;

int
X_mrt6_ioctl(u_long cmd, caddr_t data)
{
 int ret;

 ret = EINVAL;

 switch (cmd) {
 case 128:
  ret = get_sg_cnt((struct sioc_sg_req6 *)data);
  break;

 case 129:
  ret = get_mif6_cnt((struct sioc_mif_req6 *)data);
  break;

 default:
  break;
 }

 return (ret);
}
