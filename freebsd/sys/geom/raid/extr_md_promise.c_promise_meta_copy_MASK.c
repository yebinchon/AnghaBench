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
struct promise_raid_conf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MD_PROMISE ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct promise_raid_conf* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct promise_raid_conf*,struct promise_raid_conf*,int) ; 

__attribute__((used)) static struct promise_raid_conf *
FUNC2(struct promise_raid_conf *meta)
{
	struct promise_raid_conf *nmeta;

	nmeta = FUNC0(sizeof(*nmeta), M_MD_PROMISE, M_WAITOK);
	FUNC1(nmeta, meta, sizeof(*nmeta));
	return (nmeta);
}