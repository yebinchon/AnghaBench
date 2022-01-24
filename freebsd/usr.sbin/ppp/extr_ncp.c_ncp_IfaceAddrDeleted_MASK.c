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
struct ncp {int /*<<< orphan*/  ipcp; } ;
struct iface_addr {int /*<<< orphan*/  ifa; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct iface_addr const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct ncp *ncp, const struct iface_addr *addr)
{
  if (FUNC1(&addr->ifa) == AF_INET)
    FUNC0(&ncp->ipcp, addr);
}