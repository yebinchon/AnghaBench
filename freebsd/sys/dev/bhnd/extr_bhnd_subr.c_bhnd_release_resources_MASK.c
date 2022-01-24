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
typedef  size_t u_int ;
struct resource_spec {int type; int /*<<< orphan*/  rid; } ;
struct bhnd_resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct bhnd_resource*) ; 

void
FUNC1(device_t dev, const struct resource_spec *rs,
    struct bhnd_resource **res)
{
	for (u_int i = 0; rs[i].type != -1; i++) {
		if (res[i] == NULL)
			continue;

		FUNC0(dev, rs[i].type, rs[i].rid, res[i]);
		res[i] = NULL;
	}
}