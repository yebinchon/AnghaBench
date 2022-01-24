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
struct ste_type {scalar_t__ ste_vid; scalar_t__ ste_did; int /*<<< orphan*/ * ste_name; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct ste_type* ste_devs ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	const struct ste_type *t;

	t = ste_devs;

	while (t->ste_name != NULL) {
		if ((FUNC2(dev) == t->ste_vid) &&
		    (FUNC1(dev) == t->ste_did)) {
			FUNC0(dev, t->ste_name);
			return (BUS_PROBE_DEFAULT);
		}
		t++;
	}

	return (ENXIO);
}