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
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int uint8_t ;
typedef  int uint32_t ;
struct usb_device {int dummy; } ;
struct bbb_transfer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIR_OUT ; 
 int SCSI_FIXED_BLOCK_SIZE ; 
 int /*<<< orphan*/  UICLASS_MASS ; 
 int /*<<< orphan*/  USB_ERR_INVAL ; 
 int /*<<< orphan*/  USB_MS_HZ ; 
 struct bbb_transfer* FUNC0 (struct usb_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bbb_transfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bbb_transfer*) ; 

usb_error_t
FUNC3(struct usb_device *udev, uint8_t iface_index,
    uint32_t lba, uint32_t blocks, void *buffer)
{
	struct bbb_transfer *sc;
	uint8_t cmd[10];
	usb_error_t err;

	cmd[0] = 0x2a;		/* WRITE_10 */
	cmd[1] = 0;
	cmd[2] = lba >> 24;
	cmd[3] = lba >> 16;
	cmd[4] = lba >> 8;
	cmd[5] = lba >> 0;
	cmd[6] = 0;
	cmd[7] = blocks >> 8;
	cmd[8] = blocks;
	cmd[9] = 0;

	sc = FUNC0(udev, iface_index, UICLASS_MASS);
	if (sc == NULL)
		return (USB_ERR_INVAL);

	err = FUNC1(sc, DIR_OUT, 0, buffer,
	    blocks * SCSI_FIXED_BLOCK_SIZE, cmd, 10, USB_MS_HZ);

	FUNC2(sc);

	return (err);
}