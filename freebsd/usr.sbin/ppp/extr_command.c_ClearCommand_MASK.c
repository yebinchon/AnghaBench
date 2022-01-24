#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct pppThroughput {int dummy; } ;
struct datalink {TYPE_3__* physical; } ;
struct cmdargs {int argc; int argn; int /*<<< orphan*/  prompt; int /*<<< orphan*/ * argv; TYPE_7__* bundle; struct datalink* cx; } ;
struct TYPE_12__ {struct pppThroughput throughput; } ;
struct TYPE_11__ {struct pppThroughput throughput; } ;
struct TYPE_13__ {TYPE_5__ ipv6cp; TYPE_4__ ipcp; } ;
struct TYPE_14__ {TYPE_6__ ncp; } ;
struct TYPE_8__ {struct pppThroughput total; } ;
struct TYPE_9__ {TYPE_1__ stats; } ;
struct TYPE_10__ {TYPE_2__ link; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 int THROUGHPUT_ALL ; 
 int THROUGHPUT_CURRENT ; 
 int THROUGHPUT_OVERALL ; 
 int THROUGHPUT_PEAK ; 
 struct datalink* FUNC0 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pppThroughput*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct cmdargs const *arg)
{
  struct pppThroughput *t;
  struct datalink *cx;
  int i, clear_type;

  if (arg->argc < arg->argn + 1)
    return -1;

  if (FUNC2(arg->argv[arg->argn], "physical") == 0) {
    cx = arg->cx;
    if (!cx)
      cx = FUNC0(arg->bundle, NULL);
    if (!cx) {
      FUNC1(LogWARN, "A link must be specified for ``clear physical''\n");
      return 1;
    }
    t = &cx->physical->link.stats.total;
  } else if (FUNC2(arg->argv[arg->argn], "ipcp") == 0)
    t = &arg->bundle->ncp.ipcp.throughput;
#ifndef NOINET6
  else if (FUNC2(arg->argv[arg->argn], "ipv6cp") == 0)
    t = &arg->bundle->ncp.ipv6cp.throughput;
#endif
  else
    return -1;

  if (arg->argc > arg->argn + 1) {
    clear_type = 0;
    for (i = arg->argn + 1; i < arg->argc; i++)
      if (FUNC2(arg->argv[i], "overall") == 0)
        clear_type |= THROUGHPUT_OVERALL;
      else if (FUNC2(arg->argv[i], "current") == 0)
        clear_type |= THROUGHPUT_CURRENT;
      else if (FUNC2(arg->argv[i], "peak") == 0)
        clear_type |= THROUGHPUT_PEAK;
      else
        return -1;
  } else
    clear_type = THROUGHPUT_ALL;

  FUNC3(t, clear_type, arg->prompt);
  return 0;
}