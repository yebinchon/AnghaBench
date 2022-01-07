
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int si_note; } ;
struct TYPE_4__ {int mtx; TYPE_1__ sel; int devq; int cv; } ;


 int GID_WHEEL ;
 int MAKEDEV_ETERNAL ;
 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int UID_ROOT ;
 int cv_init (int *,char*) ;
 int dev_cdevsw ;
 int devctl2_init () ;
 int devctl_dev ;
 TYPE_2__ devsoftc ;
 int knlist_init_mtx (int *,int *) ;
 int make_dev_credf (int ,int *,int ,int *,int ,int ,int,char*) ;
 int mtx_init (int *,char*,char*,int ) ;

__attribute__((used)) static void
devinit(void)
{
 devctl_dev = make_dev_credf(MAKEDEV_ETERNAL, &dev_cdevsw, 0, ((void*)0),
     UID_ROOT, GID_WHEEL, 0600, "devctl");
 mtx_init(&devsoftc.mtx, "dev mtx", "devd", MTX_DEF);
 cv_init(&devsoftc.cv, "dev cv");
 TAILQ_INIT(&devsoftc.devq);
 knlist_init_mtx(&devsoftc.sel.si_note, &devsoftc.mtx);
 devctl2_init();
}
