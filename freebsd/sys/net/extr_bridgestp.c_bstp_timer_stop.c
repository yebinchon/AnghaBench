
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_timer {scalar_t__ latched; scalar_t__ active; scalar_t__ value; } ;



__attribute__((used)) static void
bstp_timer_stop(struct bstp_timer *t)
{
 t->value = 0;
 t->active = 0;
 t->latched = 0;
}
