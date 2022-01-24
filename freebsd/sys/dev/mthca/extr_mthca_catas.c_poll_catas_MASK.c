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
struct TYPE_2__ {int size; int /*<<< orphan*/  timer; scalar_t__ map; } ;
struct mthca_dev {TYPE_1__ catas_err; } ;

/* Variables and functions */
 scalar_t__ MTHCA_CATAS_POLL_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (struct mthca_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(unsigned long dev_ptr)
{
	struct mthca_dev *dev = (struct mthca_dev *) dev_ptr;
	int i;

	for (i = 0; i < dev->catas_err.size; ++i)
		if (FUNC2(dev->catas_err.map + i)) {
			FUNC0(dev);
			return;
		}

	FUNC1(&dev->catas_err.timer,
		  FUNC3(jiffies + MTHCA_CATAS_POLL_INTERVAL));
}