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
struct ichwd_device {int /*<<< orphan*/  desc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,struct ichwd_device**) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,struct ichwd_device**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct ichwd_device *id_p;

	/* Do not claim some ISA PnP device by accident. */
	if (FUNC4(dev) != 0)
		return (ENXIO);

	if (FUNC2(FUNC0(dev), &id_p) == NULL &&
	    FUNC3(FUNC0(dev), &id_p) == NULL)
		return (ENXIO);

	FUNC1(dev, id_p->desc);
	return (0);
}