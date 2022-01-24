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
struct ioat_softc {size_t domain; scalar_t__ cpu; scalar_t__ version; int chan_idx; int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 struct ioat_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int IOAT_MAX_CHANNELS ; 
 scalar_t__ IOAT_VER_3_0 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/ * cpuset_domain ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct ioat_softc** ioat_channel ; 
 int ioat_channel_index ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ioat_list_mtx ; 
 int FUNC7 (struct ioat_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ioat_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct ioat_softc*) ; 
 int FUNC10 (struct ioat_softc*) ; 
 int FUNC11 (struct ioat_softc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(device_t device)
{
	struct ioat_softc *ioat;
	int error, i;

	ioat = FUNC2(device);
	ioat->device = device;
	if (FUNC3(device, &ioat->domain) != 0)
		ioat->domain = 0;
	ioat->cpu = FUNC0(&cpuset_domain[ioat->domain]) - 1;
	if (ioat->cpu < 0)
		ioat->cpu = FUNC1();

	error = FUNC7(ioat);
	if (error != 0)
		goto err;

	ioat->version = FUNC9(ioat);
	if (ioat->version < IOAT_VER_3_0) {
		error = ENODEV;
		goto err;
	}

	error = FUNC5(device);
	if (error != 0)
		goto err;

	error = FUNC16(device);
	if (error != 0)
		goto err;

	error = FUNC11(ioat);
	if (error != 0)
		goto err;

	error = FUNC10(ioat);
	if (error != 0)
		goto err;

	FUNC8(ioat, FALSE);
	FUNC12(device);

	FUNC14(&ioat_list_mtx);
	for (i = 0; i < IOAT_MAX_CHANNELS; i++) {
		if (ioat_channel[i] == NULL)
			break;
	}
	if (i >= IOAT_MAX_CHANNELS) {
		FUNC15(&ioat_list_mtx);
		FUNC4(device, "Too many I/OAT devices in system\n");
		error = ENXIO;
		goto err;
	}
	ioat->chan_idx = i;
	ioat_channel[i] = ioat;
	if (i >= ioat_channel_index)
		ioat_channel_index = i + 1;
	FUNC15(&ioat_list_mtx);

	FUNC13();

err:
	if (error != 0)
		FUNC6(device);
	return (error);
}