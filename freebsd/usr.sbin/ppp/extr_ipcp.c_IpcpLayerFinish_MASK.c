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
struct ipcp {int /*<<< orphan*/  throughput; } ;
struct fsm {TYPE_1__* link; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogIPCP ; 
 struct ipcp* FUNC0 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct fsm *fp)
{
  /* We're now down */
  struct ipcp *ipcp = FUNC0(fp);

  FUNC1(LogIPCP, "%s: LayerFinish.\n", fp->link->name);
  FUNC3(&ipcp->throughput);
  FUNC2(&ipcp->throughput, LogIPCP, NULL);
}