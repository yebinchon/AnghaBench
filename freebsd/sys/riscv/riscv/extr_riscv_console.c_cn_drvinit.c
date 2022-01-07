
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cn_pri; char* cn_name; } ;


 scalar_t__ CN_DEAD ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,int *) ;
 int polltime ;
 int riscv_callout ;
 TYPE_1__ riscv_consdev ;
 int riscv_timeout ;
 int riscv_ttydevsw ;
 int tp ;
 int tty_alloc (int *,int *) ;
 int tty_init_console (int ,int ) ;
 int tty_makedev (int ,int *,char*,char*) ;

__attribute__((used)) static void
cn_drvinit(void *unused)
{

 if (riscv_consdev.cn_pri != CN_DEAD &&
     riscv_consdev.cn_name[0] != '\0') {
  tp = tty_alloc(&riscv_ttydevsw, ((void*)0));
  tty_init_console(tp, 0);
  tty_makedev(tp, ((void*)0), "%s", "rcons");

  polltime = 1;

  callout_init(&riscv_callout, 1);
  callout_reset(&riscv_callout, polltime, riscv_timeout, ((void*)0));
 }
}
