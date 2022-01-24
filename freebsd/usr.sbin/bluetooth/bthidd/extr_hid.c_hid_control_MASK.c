#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ int32_t ;
typedef  TYPE_1__* bthid_session_p ;
struct TYPE_4__ {int /*<<< orphan*/  bdaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 

int32_t
FUNC4(bthid_session_p s, uint8_t *data, int32_t len)
{
	FUNC0(s != NULL);
	FUNC0(data != NULL);
	FUNC0(len > 0);

	switch (data[0] >> 4) {
        case 0: /* Handshake (response to command) */
		if (data[0] & 0xf)
			FUNC3(LOG_ERR, "Got handshake message with error " \
				"response 0x%x from %s",
				data[0], FUNC1(&s->bdaddr, NULL));
		break;

	case 1: /* HID Control */
		switch (data[0] & 0xf) {
		case 0: /* NOP */
			break;

		case 1: /* Hard reset */
		case 2: /* Soft reset */
			FUNC3(LOG_WARNING, "Device %s requested %s reset",
				FUNC1(&s->bdaddr, NULL),
				((data[0] & 0xf) == 1)? "hard" : "soft");
			break;

		case 3: /* Suspend */
			FUNC3(LOG_NOTICE, "Device %s requested Suspend",
				FUNC1(&s->bdaddr, NULL));
			break;

		case 4: /* Exit suspend */
			FUNC3(LOG_NOTICE, "Device %s requested Exit Suspend",
				FUNC1(&s->bdaddr, NULL));
			break;

		case 5: /* Virtual cable unplug */
			FUNC3(LOG_NOTICE, "Device %s unplugged virtual cable",
				FUNC1(&s->bdaddr, NULL));
			FUNC2(s);
			break;

		default:
			FUNC3(LOG_WARNING, "Device %s sent unknown " \
                                "HID_Control message 0x%x",
				FUNC1(&s->bdaddr, NULL), data[0]);
			break;
		}
		break;

	default:
		FUNC3(LOG_WARNING, "Got unexpected message 0x%x on Control " \
			"channel from %s", data[0], FUNC1(&s->bdaddr, NULL));
		break;
	}

	return (0);
}