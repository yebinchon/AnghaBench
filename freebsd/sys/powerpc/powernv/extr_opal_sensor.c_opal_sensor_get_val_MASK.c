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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct opal_sensor_softc {int dummy; } ;
struct opal_msg {int /*<<< orphan*/ * params; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int OPAL_ASYNC_COMPLETION ; 
 int /*<<< orphan*/  OPAL_SENSOR_READ ; 
 int OPAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct opal_sensor_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct opal_sensor_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct opal_msg*,int) ; 
 int FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct opal_msg*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct opal_sensor_softc *sc, uint32_t key, uint64_t *val)
{
	struct opal_msg msg;
	uint32_t val32;
	int rv, token;

	token = FUNC4();
	FUNC1(sc);
	rv = FUNC5(OPAL_SENSOR_READ, key, token, FUNC8(&val32));

	if (rv == OPAL_ASYNC_COMPLETION) {
		/* Sleep a little to let things settle. */
		FUNC0(100);
		FUNC3(&msg, sizeof(msg));
		rv = FUNC7(&msg, sizeof(msg), token);

		if (rv == OPAL_SUCCESS)
			val32 = msg.params[0];
	}
	FUNC2(sc);

	if (rv == OPAL_SUCCESS)
		*val = val32;
	else
		rv = EIO;
	
	FUNC6(token);
	return (rv);
}