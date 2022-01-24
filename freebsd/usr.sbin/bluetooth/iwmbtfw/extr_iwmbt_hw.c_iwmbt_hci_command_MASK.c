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
struct libusb_device_handle {int dummy; } ;
struct iwmbt_hci_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwmbt_hci_cmd*) ; 
 int /*<<< orphan*/  IWMBT_INTERRUPT_ENDPOINT_ADDR ; 
 int LIBUSB_RECIPIENT_DEVICE ; 
 int LIBUSB_REQUEST_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct libusb_device_handle*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct libusb_device_handle*,int /*<<< orphan*/ ,void*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct libusb_device_handle *hdl, struct iwmbt_hci_cmd *cmd,
    void *event, int size, int *transferred, int timeout)
{
	int ret;

	ret = FUNC2(hdl,
	    LIBUSB_REQUEST_TYPE_CLASS | LIBUSB_RECIPIENT_DEVICE,
	    0,
	    0,
	    0,
	    (uint8_t *)cmd,
	    FUNC0(cmd),
	    timeout);

	if (ret < 0) {
		FUNC1("libusb_control_transfer() failed: err=%s",
		    FUNC4(ret));
		return (ret);
	}

	ret = FUNC3(hdl,
	    IWMBT_INTERRUPT_ENDPOINT_ADDR,
	    event,
	    size,
	    transferred,
	    timeout);

	if (ret < 0)
		FUNC1("libusb_interrupt_transfer() failed: err=%s",
		    FUNC4(ret));

	return (ret);
}