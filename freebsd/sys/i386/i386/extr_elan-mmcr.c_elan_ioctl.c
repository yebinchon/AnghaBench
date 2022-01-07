
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef int caddr_t ;
struct TYPE_7__ {int * tc_poll_pps; } ;
struct TYPE_5__ {int mode; } ;
struct TYPE_6__ {TYPE_1__ ppsparam; } ;


 int ENOIOCTL ;
 int PPS_CAPTUREASSERT ;
 int * elan_poll_pps ;
 TYPE_2__ elan_pps ;
 TYPE_3__ elan_timecounter ;
 scalar_t__ pps_a ;
 int pps_ioctl (int ,int ,TYPE_2__*) ;

__attribute__((used)) static int
elan_ioctl(struct cdev *dev, u_long cmd, caddr_t arg, int flag, struct thread *tdr)
{
 int error;

 error = ENOIOCTL;
 return(error);
}
