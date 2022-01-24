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
typedef  scalar_t__ u_short ;
struct port_range {unsigned int nports; scalar_t__* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,unsigned int) ; 

void
FUNC2(struct port_range *range, u_short port)
{
  unsigned p;

  for (p = 0; p < range->nports; p++)
    if (range->port[p] == port) {
      if (p + 1 != range->nports)
        FUNC1(range->port + p, range->port + p + 1,
                (range->nports - p - 1) * sizeof(u_short));
      range->nports--;
      return;
    }

  if (p == range->nports)
    FUNC0(LogWARN, "%u: Port not set to urgent\n", port);
}