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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct usb_device {int dummy; } ;
struct usb_config_descriptor {int /*<<< orphan*/  wTotalLength; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDESC_CONFIG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ USB_CONFIG_MAX ; 
 scalar_t__ USB_ERR_INVAL ; 
 scalar_t__ USB_ERR_NOMEM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct usb_config_descriptor* FUNC4 (struct usb_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,struct usb_config_descriptor*) ; 
 scalar_t__ FUNC6 (struct usb_device*,struct mtx*,struct usb_config_descriptor*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct usb_device*,struct mtx*,int /*<<< orphan*/ *,struct usb_config_descriptor*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

usb_error_t
FUNC8(struct usb_device *udev, struct mtx *mtx,
    struct usb_config_descriptor **ppcd, uint8_t index)
{
	struct usb_config_descriptor cd;
	struct usb_config_descriptor *cdesc;
	uint32_t len;
	usb_error_t err;

	FUNC1(4, "index=%d\n", index);

	*ppcd = NULL;

	err = FUNC6(udev, mtx, &cd, index);
	if (err)
		return (err);

	/* get full descriptor */
	len = FUNC2(cd.wTotalLength);
	if (len < (uint32_t)sizeof(*cdesc)) {
		/* corrupt descriptor */
		return (USB_ERR_INVAL);
	} else if (len > USB_CONFIG_MAX) {
		FUNC0("Configuration descriptor was truncated\n");
		len = USB_CONFIG_MAX;
	}
	cdesc = FUNC4(udev, len);
	if (cdesc == NULL)
		return (USB_ERR_NOMEM);
	err = FUNC7(udev, mtx, NULL, cdesc, len, len, 0,
	    UDESC_CONFIG, index, 3);
	if (err) {
		FUNC5(udev, cdesc);
		return (err);
	}
	/* make sure that the device is not fooling us: */
	FUNC3(cdesc->wTotalLength, len);

	*ppcd = cdesc;

	return (0);			/* success */
}