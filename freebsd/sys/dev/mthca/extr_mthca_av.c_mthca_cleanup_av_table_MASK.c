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
struct TYPE_2__ {int /*<<< orphan*/  alloc; int /*<<< orphan*/  pool; scalar_t__ av_map; } ;
struct mthca_dev {TYPE_1__ av_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct mthca_dev *dev)
{
	if (FUNC2(dev))
		return;

	if (dev->av_table.av_map)
		FUNC0(dev->av_table.av_map);
	FUNC3(dev->av_table.pool);
	FUNC1(&dev->av_table.alloc);
}