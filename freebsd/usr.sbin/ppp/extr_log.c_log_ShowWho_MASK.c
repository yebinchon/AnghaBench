#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  from; int /*<<< orphan*/  type; } ;
struct prompt {int /*<<< orphan*/  active; TYPE_1__ src; struct prompt* next; } ;
struct cmdargs {struct prompt* prompt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct prompt*,char*,...) ; 
 struct prompt* promptlist ; 

int
FUNC1(struct cmdargs const *arg)
{
  struct prompt *p;

  for (p = promptlist; p; p = p->next) {
    FUNC0(arg->prompt, "%s (%s)", p->src.type, p->src.from);
    if (p == arg->prompt)
      FUNC0(arg->prompt, " *");
    if (!p->active)
      FUNC0(arg->prompt, " ^Z");
    FUNC0(arg->prompt, "\n");
  }

  return 0;
}