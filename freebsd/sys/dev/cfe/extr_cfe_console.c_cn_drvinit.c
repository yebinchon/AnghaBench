
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty {int dummy; } ;
struct TYPE_2__ {scalar_t__ cn_pri; char* cn_name; } ;


 scalar_t__ CN_DEAD ;
 int callout_init_mtx (int *,int ,int ) ;
 TYPE_1__ cfe_consdev ;
 int cfe_timer ;
 int cfe_ttydevsw ;
 struct tty* tty_alloc (int *,int *) ;
 int tty_getlock (struct tty*) ;
 int tty_makedev (struct tty*,int *,char*) ;

__attribute__((used)) static void
cn_drvinit(void *unused)
{
 struct tty *tp;

 if (cfe_consdev.cn_pri != CN_DEAD &&
     cfe_consdev.cn_name[0] != '\0') {
  tp = tty_alloc(&cfe_ttydevsw, ((void*)0));
  callout_init_mtx(&cfe_timer, tty_getlock(tp), 0);
  tty_makedev(tp, ((void*)0), "cfecons");
 }
}
