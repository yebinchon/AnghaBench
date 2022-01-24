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
struct sis_type {scalar_t__ sis_vid; scalar_t__ sis_did; int /*<<< orphan*/ * sis_name; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct sis_type* sis_devs ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	const struct sis_type	*t;

	t = sis_devs;

	while (t->sis_name != NULL) {
		if ((FUNC2(dev) == t->sis_vid) &&
		    (FUNC1(dev) == t->sis_did)) {
			FUNC0(dev, t->sis_name);
			return (BUS_PROBE_DEFAULT);
		}
		t++;
	}

	return (ENXIO);
}