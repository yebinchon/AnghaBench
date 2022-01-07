
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct tdfx_pio_data {int dummy; } ;


 int EINVAL ;


 int _IOC_DIR (int ) ;
 int tdfx_do_pio_rd (struct tdfx_pio_data*) ;
 int tdfx_do_pio_wt (struct tdfx_pio_data*) ;

__attribute__((used)) static int
tdfx_do_pio(u_int cmd, struct tdfx_pio_data *piod)
{

 switch(_IOC_DIR(cmd)) {
  case 128:
   return tdfx_do_pio_rd(piod);
   break;
  case 129:
   return tdfx_do_pio_wt(piod);
   break;
  default:
   return -EINVAL;
 }
}
