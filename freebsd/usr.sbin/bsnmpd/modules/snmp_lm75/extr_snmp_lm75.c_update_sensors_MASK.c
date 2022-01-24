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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int LM75BUF ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ UPDATE_INTERVAL ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ last_sensors_update ; 
 scalar_t__ lm75_sensors ; 
 scalar_t__ FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int FUNC8 (int*,size_t,int*,size_t*) ; 
 scalar_t__ FUNC9 (int*,size_t,char*,int) ; 
 int FUNC10 (char*,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static int
FUNC12(void)
{
	char buf[LM75BUF];
	int i, root[5], *next, *oid;
	size_t len, nextlen, rootlen;
	static uint64_t now;

	now = FUNC3();
	if (now - last_sensors_update < UPDATE_INTERVAL)
		return (0);

	last_sensors_update = now;

	/* Reset the sensor data. */
	FUNC2();
	lm75_sensors = 0;

	/* Start from the lm75 default root node. */
	rootlen = 2;
	if (FUNC10("dev.lm75", root, &rootlen) == -1)
		return (0);

	oid = (int *)FUNC4(sizeof(int) * rootlen);
	if (oid == NULL) {
		FUNC6("malloc");
		return (-1);
	}
	FUNC5(oid, root, rootlen * sizeof(int));
	len = rootlen;

	/* Traverse the sysctl(3) interface and find the active sensors. */
	for (;;) {

		/* Find the size of the next mib. */
		nextlen = 0;
		if (FUNC8(oid, len, NULL, &nextlen) == -1) {
			FUNC1(oid);
			return (0);
		}
		/* Alocate and read the next mib. */
		next = (int *)FUNC4(nextlen);
		if (next == NULL) {
			FUNC11(LOG_ERR,
			    "Unable to allocate %zu bytes for resource",
			    nextlen);
			FUNC1(oid);
			return (-1);
		}
		if (FUNC8(oid, len, next, &nextlen) == -1) {
			FUNC1(oid);
			FUNC1(next);
			return (0);
		}
		FUNC1(oid);
		/* Check if we care about the next mib. */
		for (i = 0; i < (int)rootlen; i++)
			if (next[i] != root[i]) {
				FUNC1(next);
				return (0);
			}
		oid = (int *)FUNC4(nextlen);
		if (oid == NULL) {
			FUNC11(LOG_ERR,
			    "Unable to allocate %zu bytes for resource",
			    nextlen);
			FUNC1(next);
			return (-1);
		}
		FUNC5(oid, next, nextlen);
		FUNC1(next);
		len = nextlen / sizeof(int);

		/* Find the mib name. */
		if (FUNC9(oid, len, buf, sizeof(buf)) != 0)
			continue;

		if (FUNC7(buf, "temperature"))
			if (FUNC0(buf) != 0) {
				FUNC1(oid);
				return (-1);
			}
	}

	return (0);
}