
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef int caddr_t ;


 int DWTAP_PRINTF (char*) ;
 int EINVAL ;

int
wtap_node_ioctl(struct cdev *dev, u_long cmd, caddr_t data,
    int fflag, struct thread *td)
{
 int error = 0;

 switch(cmd) {
 default:
  DWTAP_PRINTF("Unknown WTAP IOCTL\n");
  error = EINVAL;
 }
 return error;
}
