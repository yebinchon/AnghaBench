
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_timer {int latched; int active; } ;



__attribute__((used)) static void
bstp_timer_latch(struct bstp_timer *t)
{
 t->latched = 1;
 t->active = 1;
}
