#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  wMaxPacketSize; } ;
typedef  TYPE_1__ usb_endpoint_descriptor_audio_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(usb_endpoint_descriptor_audio_t *ep,
    uint32_t xps, uint32_t add)
{
	uint32_t mps;

	mps = FUNC1(ep->wMaxPacketSize);

	/*
	 * If the device indicates it can send more data than what the
	 * sample rate indicates, we apply the workaround.
	 */
	if (mps > xps) {

		/* allow additional data */
		xps += add;

		/* check against the maximum USB 1.x length */
		if (xps > 1023)
			xps = 1023;

		/* check if we should do an update */
		if (mps < xps) {
			/* simply update the wMaxPacketSize field */
			FUNC2(ep->wMaxPacketSize, xps);
			FUNC0("Workaround: Updated wMaxPacketSize "
			    "from %d to %d bytes.\n",
			    (int)mps, (int)xps);
		}
	}
}