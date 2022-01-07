
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int si_note; } ;
struct TYPE_4__ {TYPE_1__ sc_selp; int sc_callout; } ;


 int GID_WHEEL ;
 int MAKEDEV_ETERNAL ;
 int UID_ROOT ;
 int callout_init_mtx (int *,int *,int ) ;
 int cv_init (int *,char*) ;
 int knlist_init_mtx (int *,int *) ;
 int log_cdevsw ;
 int log_wakeup ;
 TYPE_2__ logsoftc ;
 int make_dev_credf (int ,int *,int ,int *,int ,int ,int,char*) ;
 int msgbuf_lock ;

__attribute__((used)) static void
log_drvinit(void *unused)
{

 cv_init(&log_wakeup, "klog");
 callout_init_mtx(&logsoftc.sc_callout, &msgbuf_lock, 0);
 knlist_init_mtx(&logsoftc.sc_selp.si_note, &msgbuf_lock);
 make_dev_credf(MAKEDEV_ETERNAL, &log_cdevsw, 0, ((void*)0), UID_ROOT,
     GID_WHEEL, 0600, "klog");
}
