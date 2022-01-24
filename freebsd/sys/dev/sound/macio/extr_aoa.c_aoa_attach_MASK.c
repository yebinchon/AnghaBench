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
struct aoa_softc {int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  status ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AOA_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int SND_STATUSLEN ; 
 int /*<<< orphan*/  aoa_chan_class ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct aoa_softc*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct aoa_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 

int
FUNC7(void *xsc)
{
	char status[SND_STATUSLEN];
	struct aoa_softc *sc;
	device_t self;
	int err;

	sc = xsc;
	self = sc->sc_dev;

	if (FUNC4(self, sc, 1, 0))
		return (ENXIO);

	err = FUNC3(self, AOA_BUFFER_SIZE, AOA_BUFFER_SIZE,
	    AOA_BUFFER_SIZE);
	FUNC0(("pcm_getbuffersize returned %d\n", err));

	FUNC2(self, PCMDIR_PLAY, &aoa_chan_class, sc);

	FUNC6(status, sizeof(status), "at %s", FUNC1(self)); 
	FUNC5(self, status);

	return (0);
}