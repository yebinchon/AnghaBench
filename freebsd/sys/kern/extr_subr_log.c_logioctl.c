
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int sc_sigio; int sc_state; } ;


 int ENOTTY ;





 int LOG_ASYNC ;


 int fgetown (int *) ;
 int fsetown (int,int *) ;
 TYPE_1__ logsoftc ;
 int msgbuf_getcount (int ) ;
 int msgbuf_lock ;
 int msgbufp ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
logioctl(struct cdev *dev, u_long com, caddr_t data, int flag, struct thread *td)
{

 switch (com) {


 case 131:
  *(int *)data = msgbuf_getcount(msgbufp);
  break;

 case 132:
  break;

 case 134:
  mtx_lock(&msgbuf_lock);
  if (*(int *)data)
   logsoftc.sc_state |= LOG_ASYNC;
  else
   logsoftc.sc_state &= ~LOG_ASYNC;
  mtx_unlock(&msgbuf_lock);
  break;

 case 130:
  return (fsetown(*(int *)data, &logsoftc.sc_sigio));

 case 133:
  *(int *)data = fgetown(&logsoftc.sc_sigio);
  break;


 case 128:
  return (fsetown(-(*(int *)data), &logsoftc.sc_sigio));


 case 129:
  *(int *)data = -fgetown(&logsoftc.sc_sigio);
  break;

 default:
  return (ENOTTY);
 }
 return (0);
}
