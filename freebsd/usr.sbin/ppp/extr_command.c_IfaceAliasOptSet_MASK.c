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
struct cmdargs {TYPE_2__* bundle; } ;
struct TYPE_3__ {unsigned long long optmask; } ;
struct TYPE_4__ {TYPE_1__ cfg; int /*<<< orphan*/  NatEnabled; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  OPT_IFACEALIAS ; 
 int FUNC1 (struct cmdargs const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(struct cmdargs const *arg)
{
  unsigned long long save = arg->bundle->cfg.optmask;
  int result = FUNC1(arg);

  if (result == 0)
    if (FUNC0(arg->bundle, OPT_IFACEALIAS) && !arg->bundle->NatEnabled) {
      arg->bundle->cfg.optmask = save;
      FUNC2(LogWARN, "Cannot enable iface-alias without NAT\n");
      result = 2;
    }

  return result;
}