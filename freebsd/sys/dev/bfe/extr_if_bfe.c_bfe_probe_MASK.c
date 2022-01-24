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
struct bfe_type {scalar_t__ bfe_vid; scalar_t__ bfe_did; int /*<<< orphan*/ * bfe_name; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 struct bfe_type* bfe_devs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct bfe_type *t;

	t = bfe_devs;

	while (t->bfe_name != NULL) {
		if (FUNC2(dev) == t->bfe_vid &&
		    FUNC1(dev) == t->bfe_did) {
			FUNC0(dev, t->bfe_name);
			return (BUS_PROBE_DEFAULT);
		}
		t++;
	}

	return (ENXIO);
}