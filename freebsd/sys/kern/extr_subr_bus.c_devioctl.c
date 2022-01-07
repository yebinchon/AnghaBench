
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int nonblock; int async; int sigio; } ;


 int ENOTTY ;







 TYPE_1__ devsoftc ;
 int fgetown (int *) ;
 int fsetown (int,int *) ;

__attribute__((used)) static int
devioctl(struct cdev *dev, u_long cmd, caddr_t data, int fflag, struct thread *td)
{
 switch (cmd) {

 case 131:
  if (*(int*)data)
   devsoftc.nonblock = 1;
  else
   devsoftc.nonblock = 0;
  return (0);
 case 134:
  if (*(int*)data)
   devsoftc.async = 1;
  else
   devsoftc.async = 0;
  return (0);
 case 128:
  return fsetown(*(int *)data, &devsoftc.sigio);
 case 132:
  *(int *)data = fgetown(&devsoftc.sigio);
  return (0);


 case 133:
 case 130:
 case 129:
 default:
  break;
 }
 return (ENOTTY);
}
