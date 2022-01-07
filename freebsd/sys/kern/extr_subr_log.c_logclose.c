
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {scalar_t__ sc_state; int sc_callout; int sc_sigio; } ;


 int callout_stop (int *) ;
 int funsetown (int *) ;
 scalar_t__ log_open ;
 TYPE_1__ logsoftc ;
 int msgbuf_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
logclose(struct cdev *dev, int flag, int mode, struct thread *td)
{

 funsetown(&logsoftc.sc_sigio);

 mtx_lock(&msgbuf_lock);
 callout_stop(&logsoftc.sc_callout);
 logsoftc.sc_state = 0;
 log_open = 0;
 mtx_unlock(&msgbuf_lock);

 return (0);
}
