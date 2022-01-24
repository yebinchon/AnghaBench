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
struct TYPE_2__ {int flags; } ;
struct dn_schk {int /*<<< orphan*/ * siht; int /*<<< orphan*/  drain_bucket; TYPE_1__ sch; } ;

/* Variables and functions */
 scalar_t__ DNHT_SCAN_DEL ; 
 int DN_HAVE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__ (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(void *_s, void *arg)
{
	struct dn_schk *s = _s;

	if (s->sch.flags & DN_HAVE_MASK) {
		FUNC0(s->siht, &s->drain_bucket,
				drain_scheduler_cb, NULL);
		s->drain_bucket++;
	} else {
		if (s->siht) {
			if (FUNC1(s->siht, NULL) == DNHT_SCAN_DEL)
				s->siht = NULL;
		}
	}
	return 0;
}