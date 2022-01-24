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
struct siis_channel {int /*<<< orphan*/  mtx; scalar_t__ oslots; int /*<<< orphan*/  sim; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PRIBIO ; 
 struct siis_channel* FUNC0 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (struct siis_channel*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct siis_channel *ch = FUNC0(dev);

	FUNC2(&ch->mtx);
	FUNC5(ch->sim, 1);
	while (ch->oslots)
		FUNC1(ch, &ch->mtx, PRIBIO, "siissusp", hz/100);
	FUNC4(dev);
	FUNC3(&ch->mtx);
	return (0);
}