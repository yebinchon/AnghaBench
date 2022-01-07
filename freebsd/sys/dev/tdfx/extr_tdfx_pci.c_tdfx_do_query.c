
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct tdfx_pio_data {int dummy; } ;


 int EINVAL ;
 int _IOC_NR (int ) ;
 int printf (char*,int) ;
 int tdfx_query_boards () ;
 int tdfx_query_fetch (int ,struct tdfx_pio_data*) ;
 int tdfx_query_update (int ,struct tdfx_pio_data*) ;

__attribute__((used)) static int
tdfx_do_query(u_int cmd, struct tdfx_pio_data *piod)
{

 switch(_IOC_NR(cmd)) {
  case 2:
   return tdfx_query_boards();
   break;
  case 3:
   return tdfx_query_fetch(cmd, piod);
   break;
  case 4:
   return tdfx_query_update(cmd, piod);
   break;
  default:




   return -EINVAL;
 }
}
