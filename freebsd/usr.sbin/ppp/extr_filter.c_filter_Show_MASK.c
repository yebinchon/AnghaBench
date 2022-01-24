#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct filter {int /*<<< orphan*/  rule; int /*<<< orphan*/  name; } ;
struct cmdargs {int argc; int argn; int /*<<< orphan*/  prompt; TYPE_2__* bundle; int /*<<< orphan*/ * argv; } ;
struct TYPE_3__ {struct filter alive; struct filter dial; struct filter out; struct filter in; } ;
struct TYPE_4__ {TYPE_1__ filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int
FUNC3(struct cmdargs const *arg)
{
  if (arg->argc > arg->argn+1)
    return -1;

  if (arg->argc == arg->argn+1) {
    struct filter *filter;

    if (!FUNC2(arg->argv[arg->argn], "in"))
      filter = &arg->bundle->filter.in;
    else if (!FUNC2(arg->argv[arg->argn], "out"))
      filter = &arg->bundle->filter.out;
    else if (!FUNC2(arg->argv[arg->argn], "dial"))
      filter = &arg->bundle->filter.dial;
    else if (!FUNC2(arg->argv[arg->argn], "alive"))
      filter = &arg->bundle->filter.alive;
    else
      return -1;
    FUNC0(filter->rule, arg->prompt);
  } else {
    struct filter *filter[4];
    int f;

    filter[0] = &arg->bundle->filter.in;
    filter[1] = &arg->bundle->filter.out;
    filter[2] = &arg->bundle->filter.dial;
    filter[3] = &arg->bundle->filter.alive;
    for (f = 0; f < 4; f++) {
      if (f)
        FUNC1(arg->prompt, "\n");
      FUNC1(arg->prompt, "%s:\n", filter[f]->name);
      FUNC0(filter[f]->rule, arg->prompt);
    }
  }

  return 0;
}