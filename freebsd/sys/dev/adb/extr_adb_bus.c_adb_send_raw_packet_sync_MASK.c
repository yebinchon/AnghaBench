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
typedef  int u_char ;
struct adb_softc {int sync_packet; int packet_reply; int /*<<< orphan*/  syncreg; int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 struct adb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adb_softc*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int 
FUNC7(device_t dev, uint8_t to, uint8_t command, 
    uint8_t reg, int len, u_char *data, u_char *reply) 
{
	u_char command_byte = 0;
	struct adb_softc *sc;
	int result = -1;
	int i = 1;

	sc = FUNC4(dev);
	
	command_byte |= to << 4;
	command_byte |= command << 2;
	command_byte |= reg;

	/* Wait if someone else has a synchronous request pending */
	while (!FUNC1(&sc->sync_packet, 0xffff, command_byte))
		FUNC6(sc, 0, "ADB sync", hz/10);

	sc->packet_reply = 0;
	sc->sync_packet = command_byte;

	FUNC0(sc->parent, command_byte, len, data, 1);

	while (!FUNC2(&sc->packet_reply,0)) {
		/*
		 * Maybe the command got lost? Try resending and polling the 
		 * controller.
		 */
		if (i % 40 == 0)
			FUNC0(sc->parent, command_byte, 
			    len, data, 1);

		FUNC6(sc, 0, "ADB sync", hz/10);
		i++;
	}

	result = sc->packet_reply - 1;

	if (reply != NULL && result > 0)
		FUNC5(reply,sc->syncreg,result);

	/* Clear packet sync */
	sc->packet_reply = 0;

	/*
	 * We can't match a value beyond 8 bits, so set sync_packet to 
	 * 0xffff to avoid collisions.
	 */
	FUNC3(&sc->sync_packet, 0xffff); 

	return (result);
}