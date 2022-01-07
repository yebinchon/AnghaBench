
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct prompt {int nonewline; int owner; } ;
struct TYPE_4__ {char* name; struct prompt* arg; int load; int func; } ;


 int SECTICKS ;
 TYPE_1__ bgtimer ;
 scalar_t__ getpgrp () ;
 int log_ActivatePrompt (struct prompt*) ;
 int prompt_Required (struct prompt*) ;
 int prompt_TimedContinue ;
 int prompt_TtyCommandMode (struct prompt*) ;
 scalar_t__ prompt_pgrp (struct prompt*) ;
 int timer_Start (TYPE_1__*) ;
 int timer_Stop (TYPE_1__*) ;

void
prompt_Continue(struct prompt *p)
{
  timer_Stop(&bgtimer);
  if (getpgrp() == prompt_pgrp(p)) {
    prompt_TtyCommandMode(p);
    p->nonewline = 1;
    prompt_Required(p);
    log_ActivatePrompt(p);
  } else if (!p->owner) {
    bgtimer.func = prompt_TimedContinue;
    bgtimer.name = "prompt bg";
    bgtimer.load = SECTICKS;
    bgtimer.arg = p;
    timer_Start(&bgtimer);
  }
}
