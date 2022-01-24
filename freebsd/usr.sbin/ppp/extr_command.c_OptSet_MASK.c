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
struct cmdargs {int argn; int /*<<< orphan*/  bundle; int /*<<< orphan*/ * argv; TYPE_1__* cmd; } ;
struct TYPE_4__ {int /*<<< orphan*/  ipv6_available; } ;
struct TYPE_3__ {scalar_t__ args; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LogWARN ; 
 unsigned int NEG_ENABLED ; 
 int OPT_IPV6CP ; 
 int OPT_NAS_IDENTIFIER ; 
 int OPT_NAS_IP_ADDRESS ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__ probe ; 

__attribute__((used)) static int
FUNC5(struct cmdargs const *arg)
{
  int opt = (int)(long)arg->cmd->args;
  unsigned keep;			/* Keep this opt */
  unsigned add;				/* Add this opt */

  if (FUNC1(arg->argv[arg->argn - 2], &keep, &add) == NULL)
    return 1;

#ifndef NOINET6
  if (add == NEG_ENABLED && opt == OPT_IPV6CP && !probe.ipv6_available) {
    FUNC2(LogWARN, "IPv6 is not available on this machine\n");
    return 1;
  }
#endif
  if (!add && ((opt == OPT_NAS_IP_ADDRESS &&
                !FUNC0(arg->bundle, OPT_NAS_IDENTIFIER)) ||
               (opt == OPT_NAS_IDENTIFIER &&
                !FUNC0(arg->bundle, OPT_NAS_IP_ADDRESS)))) {
    FUNC2(LogWARN,
               "Cannot disable both NAS-IP-Address and NAS-Identifier\n");
    return 1;
  }

  if (add)
    FUNC4(arg->bundle, opt);
  else
    FUNC3(arg->bundle, opt);

  return 0;
}