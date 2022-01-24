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
struct lm75_snmp_sensor {int dummy; } ;

/* Variables and functions */
 struct lm75_snmp_sensor* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct lm75_snmp_sensor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lm75_snmp_sensor*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  sensors ; 

__attribute__((used)) static void
FUNC3(void)
{
	struct lm75_snmp_sensor *sensor;

	while ((sensor = FUNC0(&sensors)) != NULL) {
		FUNC1(&sensors, sensor, link);
		FUNC2(sensor);
	}
}