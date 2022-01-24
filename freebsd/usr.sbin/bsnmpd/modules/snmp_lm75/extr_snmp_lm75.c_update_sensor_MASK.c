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
struct lm75_snmp_sensor {int /*<<< orphan*/  parent; int /*<<< orphan*/  pnpinfo; int /*<<< orphan*/  location; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t*,int,char*) ; 

__attribute__((used)) static void
FUNC1(struct lm75_snmp_sensor *sensor, int idx)
{
	size_t len;

	len = sizeof(sensor->desc);
	FUNC0(sensor->desc, &len, idx, "%desc");

	len = sizeof(sensor->location);
	FUNC0(sensor->location, &len, idx, "%location");

	len = sizeof(sensor->pnpinfo);
	FUNC0(sensor->pnpinfo, &len, idx, "%pnpinfo");

	len = sizeof(sensor->parent);
	FUNC0(sensor->parent, &len, idx, "%parent");
}