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
struct eventtimer {int (* et_deregister_cb ) (struct eventtimer*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  et_sysctl; int /*<<< orphan*/  et_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct eventtimer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  et_all ; 
 int /*<<< orphan*/  eventtimer ; 
 int /*<<< orphan*/  eventtimers ; 
 int FUNC3 (struct eventtimer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

int
FUNC5(struct eventtimer *et)
{
	int err = 0;

	if (et->et_deregister_cb != NULL) {
		if ((err = et->et_deregister_cb(et, et->et_arg)) != 0)
			return (err);
	}

	FUNC0();
	FUNC2(&eventtimers, et, eventtimer, et_all);
	FUNC1();
	FUNC4(et->et_sysctl, 1, 1);
	return (0);
}