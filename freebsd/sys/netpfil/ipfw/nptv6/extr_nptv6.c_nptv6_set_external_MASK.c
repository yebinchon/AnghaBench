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
struct in6_addr {int dummy; } ;
struct nptv6_cfg {int /*<<< orphan*/  flags; int /*<<< orphan*/  mask; struct in6_addr external; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct in6_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NPTV6_READY ; 
 int /*<<< orphan*/  FUNC1 (struct nptv6_cfg*) ; 

__attribute__((used)) static void
FUNC2(struct nptv6_cfg *cfg, struct in6_addr *addr)
{

	cfg->external = *addr;
	FUNC0(&cfg->external, &cfg->mask);
	FUNC1(cfg);
	cfg->flags |= NPTV6_READY;
}