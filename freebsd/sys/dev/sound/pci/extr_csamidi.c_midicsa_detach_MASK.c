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
struct csa_midi_softc {int /*<<< orphan*/  mtx; int /*<<< orphan*/ * io; int /*<<< orphan*/  io_rid; int /*<<< orphan*/  mpu; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct csa_midi_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct csa_midi_softc *scp;
	int rc = 0;

	scp = FUNC1(dev);
	rc = FUNC2(scp->mpu);
	if (rc)
		return (rc);
	if (scp->io != NULL) {
		FUNC0(dev, SYS_RES_MEMORY, scp->io_rid,
		    scp->io);
		scp->io = NULL;
	}
	FUNC3(&scp->mtx);
	return (rc);
}