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
struct TYPE_2__ {int /*<<< orphan*/ * resolv_nons; int /*<<< orphan*/ * resolv; } ;
struct ipcp {TYPE_1__ ns; int /*<<< orphan*/  throughput; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct ipcp *ipcp)
{
  FUNC1(&ipcp->throughput);

  if (ipcp->ns.resolv != NULL) {
    FUNC0(ipcp->ns.resolv);
    ipcp->ns.resolv = NULL;
  }
  if (ipcp->ns.resolv_nons != NULL) {
    FUNC0(ipcp->ns.resolv_nons);
    ipcp->ns.resolv_nons = NULL;
  }
}