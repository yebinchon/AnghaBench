
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u_int32_t ;
struct thread {int* td_retval; TYPE_1__* td_proc; } ;
struct tdfx_pio_data {int dummy; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int p_pid; } ;


 int ENXIO ;
 int _IOC_TYPE (scalar_t__) ;
 int printf (char*,int,...) ;
 int tdfx_do_pio (scalar_t__,struct tdfx_pio_data*) ;
 int tdfx_do_query (scalar_t__,struct tdfx_pio_data*) ;

__attribute__((used)) static int
tdfx_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int flag, struct thread *td)
{
 int retval = 0;
 struct tdfx_pio_data *piod = (struct tdfx_pio_data*)data;




 switch(_IOC_TYPE(cmd)) {


 case 0x33:

   if((retval = tdfx_do_query(cmd, piod)) > 0) td->td_retval[0] = retval;
   else return -retval;
   break;
  case 0:

   if((tdfx_do_pio(cmd, piod)) > 0) td->td_retval[0] = retval;
   else return -retval;
   break;
  default:





   return ENXIO;
 }

 return 0;
}
