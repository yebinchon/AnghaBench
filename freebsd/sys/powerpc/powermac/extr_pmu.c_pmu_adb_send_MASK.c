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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int u_char ;
struct pmu_softc {int /*<<< orphan*/  sc_mutex; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PMU_ADB_CMD ; 
 struct pmu_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pmu_softc*,int /*<<< orphan*/ ,int,int*,int,int*) ; 

__attribute__((used)) static u_int
FUNC5(device_t dev, u_char command_byte, int len, u_char *data, 
    u_char poll)
{
	struct pmu_softc *sc = FUNC0(dev);
	int i,replen;
	uint8_t packet[16], resp[16];

	/* construct an ADB command packet and send it */

	packet[0] = command_byte;

	packet[1] = 0;
	packet[2] = len;
	for (i = 0; i < len; i++)
		packet[i + 3] = data[i];

	FUNC1(&sc->sc_mutex);
	replen = FUNC4(sc, PMU_ADB_CMD, len + 3, packet, 16, resp);
	FUNC2(&sc->sc_mutex);

	if (poll)
		FUNC3(dev);

	return 0;
}