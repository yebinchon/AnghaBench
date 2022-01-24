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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct hda_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  HDAC_SDCTL0 ; 
 int HDAC_SDCTL_RUN ; 
 int HDAC_SDCTL_SRST ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct hda_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_softc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hda_softc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct hda_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct hda_softc *sc, uint32_t offset, uint32_t old)
{
	uint8_t stream_ind = FUNC3(offset, HDAC_SDCTL0);
	uint32_t value = FUNC2(sc, offset);
	int err;

	FUNC0("stream_ind: 0x%x old: 0x%x value: 0x%x\n",
	    stream_ind, old, value);

	if (value & HDAC_SDCTL_SRST) {
		FUNC4(sc, stream_ind);
	}

	if ((value & HDAC_SDCTL_RUN) != (old & HDAC_SDCTL_RUN)) {
		if (value & HDAC_SDCTL_RUN) {
			err = FUNC5(sc, stream_ind);
			FUNC1(!err);
		} else {
			err = FUNC6(sc, stream_ind);
			FUNC1(!err);
		}
	}
}