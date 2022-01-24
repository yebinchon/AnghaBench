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
typedef  int /*<<< orphan*/  temp ;
struct lm75_snmp_sensor {int sysctlidx; int temp; scalar_t__ index; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct lm75_snmp_sensor*,int /*<<< orphan*/ ) ; 
 int TZ_ZEROC ; 
 struct lm75_snmp_sensor* FUNC1 (int,int) ; 
 int /*<<< orphan*/  link ; 
 scalar_t__ lm75_sensors ; 
 int /*<<< orphan*/  sensors ; 
 int FUNC2 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lm75_snmp_sensor*,int) ; 
 scalar_t__ FUNC5 (int*,size_t*,int,char*) ; 

__attribute__((used)) static int
FUNC6(char *buf)
{
	int idx, temp;
	size_t len;
	struct lm75_snmp_sensor *sensor;

	if (FUNC2(buf, "dev.lm75.%d.temperature", &idx) != 1)
		return (-1);

	/* Read the sensor temperature. */
	len = sizeof(temp);
	if (FUNC5(&temp, &len, idx, "temperature") != 0)
		return (-1);

	/* Add the sensor data to the table. */
	sensor = FUNC1(1, sizeof(*sensor));
	if (sensor == NULL) {
		FUNC3(LOG_ERR, "Unable to allocate %zu bytes for resource",
		    sizeof(*sensor));
		return (-1);
	}
	sensor->index = ++lm75_sensors;
	sensor->sysctlidx = idx;
	sensor->temp = (temp - TZ_ZEROC) / 10;
	FUNC0(&sensors, sensor, link);

	FUNC4(sensor, idx);

	return (0);
}