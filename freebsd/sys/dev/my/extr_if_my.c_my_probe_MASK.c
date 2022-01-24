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
struct my_type {scalar_t__ my_vid; scalar_t__ my_did; int /*<<< orphan*/ * my_name; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct my_type* my_devs ; 
 struct my_type* my_info_tmp ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct my_type *t;

	t = my_devs;
	while (t->my_name != NULL) {
		if ((FUNC2(dev) == t->my_vid) &&
		    (FUNC1(dev) == t->my_did)) {
			FUNC0(dev, t->my_name);
			my_info_tmp = t;
			return (BUS_PROBE_DEFAULT);
		}
		t++;
	}
	return (ENXIO);
}