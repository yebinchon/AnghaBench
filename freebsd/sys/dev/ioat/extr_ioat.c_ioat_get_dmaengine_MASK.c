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
typedef  size_t uint32_t ;
struct ioat_softc {int /*<<< orphan*/  dmaengine; int /*<<< orphan*/  submit_lock; scalar_t__ destroying; scalar_t__ quiescing; } ;
typedef  int /*<<< orphan*/ * bus_dmaengine_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int M_NOWAIT ; 
 int M_WAITOK ; 
 struct ioat_softc** ioat_channel ; 
 size_t ioat_channel_index ; 
 int /*<<< orphan*/  FUNC1 (struct ioat_softc*) ; 
 int /*<<< orphan*/  ioat_list_mtx ; 
 int /*<<< orphan*/  FUNC2 (struct ioat_softc*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

bus_dmaengine_t
FUNC6(uint32_t index, int flags)
{
	struct ioat_softc *ioat;

	FUNC0((flags & ~(M_NOWAIT | M_WAITOK)) == 0,
	    ("invalid flags: 0x%08x", flags));
	FUNC0((flags & (M_NOWAIT | M_WAITOK)) != (M_NOWAIT | M_WAITOK),
	    ("invalid wait | nowait"));

	FUNC4(&ioat_list_mtx);
	if (index >= ioat_channel_index ||
	    (ioat = ioat_channel[index]) == NULL) {
		FUNC5(&ioat_list_mtx);
		return (NULL);
	}
	FUNC4(&ioat->submit_lock);
	FUNC5(&ioat_list_mtx);

	if (ioat->destroying) {
		FUNC5(&ioat->submit_lock);
		return (NULL);
	}

	FUNC1(ioat);
	if (ioat->quiescing) {
		if ((flags & M_NOWAIT) != 0) {
			FUNC2(ioat);
			FUNC5(&ioat->submit_lock);
			return (NULL);
		}

		while (ioat->quiescing && !ioat->destroying)
			FUNC3(&ioat->quiescing, &ioat->submit_lock, 0, "getdma", 0);

		if (ioat->destroying) {
			FUNC2(ioat);
			FUNC5(&ioat->submit_lock);
			return (NULL);
		}
	}
	FUNC5(&ioat->submit_lock);
	return (&ioat->dmaengine);
}