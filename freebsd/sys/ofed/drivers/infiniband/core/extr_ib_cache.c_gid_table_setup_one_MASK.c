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
struct ib_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*) ; 
 int FUNC3 (struct ib_device*) ; 

__attribute__((used)) static int FUNC4(struct ib_device *ib_dev)
{
	int err;

	err = FUNC0(ib_dev);

	if (err)
		return err;

	err = FUNC3(ib_dev);

	if (err) {
		FUNC1(ib_dev);
		FUNC2(ib_dev);
	}

	return err;
}