#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* name; struct pppThroughput* arg; int /*<<< orphan*/ * func; scalar_t__ load; } ;
struct pppThroughput {int rolling; TYPE_1__ Timer; } ;

/* Variables and functions */
 scalar_t__ SECTICKS ; 
 int /*<<< orphan*/ * throughput_sampler ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2(struct pppThroughput *t, const char *name, int rolling)
{
  FUNC1(&t->Timer);
  t->rolling = rolling ? 1 : 0;
  if (t->rolling) {
    t->Timer.load = SECTICKS;
    t->Timer.func = throughput_sampler;
    t->Timer.name = name;
    t->Timer.arg = t;
    FUNC0(&t->Timer);
  } else {
    t->Timer.load = 0;
    t->Timer.func = NULL;
    t->Timer.name = NULL;
    t->Timer.arg = NULL;
  }
}