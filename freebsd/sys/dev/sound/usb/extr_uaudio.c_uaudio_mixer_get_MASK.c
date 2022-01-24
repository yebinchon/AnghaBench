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
typedef  scalar_t__ usb_error_t ;
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
struct usb_device_request {int bRequest; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bmRequestType; int /*<<< orphan*/  wLength; } ;
struct usb_device {int dummy; } ;
struct uaudio_mixer_node {int* wValue; scalar_t__ wIndex; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
#define  GET_CUR 131 
#define  GET_MAX 130 
#define  GET_MIN 129 
#define  GET_RES 128 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int UA20_CS_CUR ; 
 int UA20_CS_RANGE ; 
 scalar_t__ UAUDIO_VERSION_20 ; 
 scalar_t__ UAUDIO_VERSION_30 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  UT_READ_CLASS_INTERFACE ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct usb_device*,int /*<<< orphan*/ *,struct usb_device_request*,int*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static int
FUNC8(struct usb_device *udev, uint16_t audio_rev,
    uint8_t what, struct uaudio_mixer_node *mc)
{
	struct usb_device_request req;
	int val;
	uint8_t data[2 + (2 * 3)];
	usb_error_t err;

	if (mc->wValue[0] == -1)
		return (0);

	if (audio_rev >= UAUDIO_VERSION_30)
		return (0);
	else if (audio_rev >= UAUDIO_VERSION_20) {
		if (what == GET_CUR) {
			req.bRequest = UA20_CS_CUR;
			FUNC3(req.wLength, 2);
		} else {
			req.bRequest = UA20_CS_RANGE;
			FUNC3(req.wLength, 8);
		}
	} else {
		uint16_t len = FUNC2(mc->type);

		req.bRequest = what;
		FUNC3(req.wLength, len);
	}

	req.bmRequestType = UT_READ_CLASS_INTERFACE;
	FUNC3(req.wValue, mc->wValue[0]);
	FUNC3(req.wIndex, mc->wIndex);

	FUNC4(data, 0, sizeof(data));

	err = FUNC6(udev, NULL, &req, data);
	if (err) {
		FUNC0("err=%s\n", FUNC7(err));
		return (0);
	}

	if (audio_rev >= UAUDIO_VERSION_30) {
		val = 0;
	} else if (audio_rev >= UAUDIO_VERSION_20) {
		switch (what) {
		case GET_CUR:
			val = (data[0] | (data[1] << 8));
			break;
		case GET_MIN:
			val = (data[2] | (data[3] << 8));
			break;
		case GET_MAX:
			val = (data[4] | (data[5] << 8));
			break;
		case GET_RES:
			val = (data[6] | (data[7] << 8));
			break;
		default:
			val = 0;
			break;
		}
	} else {
		val = (data[0] | (data[1] << 8));
	}

	if (what == GET_CUR || what == GET_MIN || what == GET_MAX)
		val = FUNC5(mc->type, val);

	FUNC1(3, "val=%d\n", val);

	return (val);
}