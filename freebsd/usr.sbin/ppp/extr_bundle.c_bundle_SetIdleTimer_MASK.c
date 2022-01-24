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
struct TYPE_3__ {unsigned int timeout; unsigned int min_timeout; } ;
struct TYPE_4__ {TYPE_1__ idle; } ;
struct bundle {int /*<<< orphan*/  ncp; TYPE_2__ cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bundle*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct bundle *bundle, unsigned timeout,
		    unsigned min_timeout)
{
  bundle->cfg.idle.timeout = timeout;
  bundle->cfg.idle.min_timeout = min_timeout;
  if (FUNC1(&bundle->ncp))
    FUNC0(bundle, 0);
}