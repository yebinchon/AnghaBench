
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty {int dummy; } ;
struct TYPE_2__ {scalar_t__ cn_pri; } ;


 scalar_t__ CN_DEAD ;
 TYPE_1__ bvm_consdev ;
 int bvm_timer ;
 int bvm_ttydevsw ;
 int callout_init_mtx (int *,int ,int ) ;
 struct tty* tty_alloc (int *,int *) ;
 int tty_getlock (struct tty*) ;
 int tty_makedev (struct tty*,int *,char*) ;

__attribute__((used)) static void
cn_drvinit(void *unused)
{
 struct tty *tp;

 if (bvm_consdev.cn_pri != CN_DEAD) {
  tp = tty_alloc(&bvm_ttydevsw, ((void*)0));
  callout_init_mtx(&bvm_timer, tty_getlock(tp), 0);
  tty_makedev(tp, ((void*)0), "bvmcons");
 }
}
