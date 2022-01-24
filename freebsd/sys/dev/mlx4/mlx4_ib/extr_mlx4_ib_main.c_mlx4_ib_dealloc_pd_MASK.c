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
struct ib_pd {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  pdn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct ib_pd*) ; 

__attribute__((used)) static int FUNC4(struct ib_pd *pd)
{
	FUNC1(FUNC2(pd->device)->dev, FUNC3(pd)->pdn);
	FUNC0(pd);

	return 0;
}