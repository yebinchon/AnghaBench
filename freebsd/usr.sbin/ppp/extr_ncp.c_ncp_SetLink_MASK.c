#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ncp {int /*<<< orphan*/  ipv6cp; int /*<<< orphan*/  ipcp; } ;
struct link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct link*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct link*) ; 

void
FUNC2(struct ncp *ncp, struct link *l)
{
  FUNC0(&ncp->ipcp, l);
#ifndef NOINET6
  FUNC1(&ncp->ipv6cp, l);
#endif
}