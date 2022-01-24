#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ leds; } ;
typedef  TYPE_2__ vkbd_status_t ;
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  st ;
typedef  int int32_t ;
struct TYPE_13__ {scalar_t__ report_ID; int /*<<< orphan*/  usage; } ;
typedef  TYPE_3__ hid_item_t ;
typedef  TYPE_4__* hid_device_p ;
typedef  int /*<<< orphan*/  hid_data_t ;
typedef  TYPE_5__* bthid_session_p ;
struct TYPE_15__ {int /*<<< orphan*/  ukbd; TYPE_1__* srv; int /*<<< orphan*/  intr; int /*<<< orphan*/  bdaddr; } ;
struct TYPE_14__ {scalar_t__ keyboard; int /*<<< orphan*/  desc; } ;
struct TYPE_11__ {scalar_t__ uinput; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ HUP_LEDS ; 
 scalar_t__ LED_CAP ; 
 scalar_t__ LED_NUM ; 
 scalar_t__ LED_SCR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ NO_REPORT_ID ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int hid_output ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__*,int) ; 

int32_t
FUNC13(bthid_session_p s, uint8_t *data, int32_t len)
{
	vkbd_status_t	st;
	uint8_t		found, report_id;
	hid_device_p	hid_device;
	hid_data_t	d;
	hid_item_t	h;
	uint8_t		leds_mask = 0;

	FUNC2(s != NULL);
	FUNC2(len == sizeof(vkbd_status_t));

	FUNC9(&st, data, sizeof(st));
	found = 0;
	report_id = NO_REPORT_ID;

	hid_device = FUNC4(&s->bdaddr);
	FUNC2(hid_device != NULL);

	data[0] = 0xa2; /* DATA output (HID output report) */
	data[1] = 0x00;
	data[2] = 0x00;

	for (d = FUNC8(hid_device->desc, 1 << hid_output, -1);
	     FUNC6(d, &h) > 0; ) {
		if (FUNC0(h.usage) == HUP_LEDS) {
			found++;

			if (report_id == NO_REPORT_ID)
				report_id = h.report_ID;
			else if (h.report_ID != report_id)
				FUNC10(LOG_WARNING, "Output HID report IDs " \
					"for %s do not match: %d vs. %d. " \
					"Please report",
					FUNC3(&s->bdaddr, NULL),
					h.report_ID, report_id);
			
			switch(FUNC1(h.usage)) {
			case 0x01: /* Num Lock LED */
				if (st.leds & LED_NUM)
					FUNC7(&data[1], &h, 1);
				leds_mask |= LED_NUM;
				break;

			case 0x02: /* Caps Lock LED */
				if (st.leds & LED_CAP)
					FUNC7(&data[1], &h, 1);
				leds_mask |= LED_CAP;
				break;

			case 0x03: /* Scroll Lock LED */
				if (st.leds & LED_SCR)
					FUNC7(&data[1], &h, 1);
				leds_mask |= LED_SCR;
				break;

			/* XXX add other LEDs ? */
			}
		}
	}
	FUNC5(d);

	if (report_id != NO_REPORT_ID) {
		data[2] = data[1];
		data[1] = report_id;
	}

	if (found)
		FUNC12(s->intr, data, (report_id != NO_REPORT_ID) ? 3 : 2);

	if (found && s->srv->uinput && hid_device->keyboard)
		FUNC11(s->ukbd, st.leds, leds_mask);

	return (0);
}