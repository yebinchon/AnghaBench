
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct callout {int c_cpu; scalar_t__ c_iflags; int * c_lock; } ;
struct TYPE_2__ {int lock_object; } ;


 scalar_t__ CALLOUT_RETURNUNLOCKED ;
 TYPE_1__ Giant ;
 int bzero (struct callout*,int) ;
 int timeout_cpu ;

void
callout_init(struct callout *c, int mpsafe)
{
 bzero(c, sizeof *c);
 if (mpsafe) {
  c->c_lock = ((void*)0);
  c->c_iflags = CALLOUT_RETURNUNLOCKED;
 } else {
  c->c_lock = &Giant.lock_object;
  c->c_iflags = 0;
 }
 c->c_cpu = timeout_cpu;
}
