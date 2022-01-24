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
typedef  void* uint8_t ;
struct libusb_device_handle {int dummy; } ;
struct iwmbt_hci_cmd {void** data; void* length; int /*<<< orphan*/  opcode; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  IWMBT_BULK_IN_ENDPOINT_ADDR ; 
 int /*<<< orphan*/  IWMBT_BULK_OUT_ENDPOINT_ADDR ; 
 int FUNC0 (struct iwmbt_hci_cmd*) ; 
 int IWMBT_HCI_MAX_CMD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (struct libusb_device_handle*,int /*<<< orphan*/ ,void**,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void**,void const*,void*) ; 
 int /*<<< orphan*/  FUNC6 (void**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct libusb_device_handle *hdl,
    uint8_t fragment_type, const void *data, uint8_t len, int timeout)
{
	int ret, transferred;
	uint8_t buf[IWMBT_HCI_MAX_CMD_SIZE];
	struct iwmbt_hci_cmd *cmd = (struct iwmbt_hci_cmd *) buf;

	FUNC6(buf, 0, sizeof(buf));
	cmd->opcode = FUNC1(0xfc09),
	cmd->length = len + 1,
	cmd->data[0] = fragment_type;
	FUNC5(cmd->data + 1, data, len);

	ret = FUNC3(hdl,
	    IWMBT_BULK_OUT_ENDPOINT_ADDR,
	    (uint8_t *)cmd,
	    FUNC0(cmd),
	    &transferred,
	    timeout);

	if (ret < 0 || transferred != (int)FUNC0(cmd)) {
		FUNC2("libusb_bulk_transfer() failed: err=%s, size=%zu",
		    FUNC4(ret),
		    FUNC0(cmd));
		return (-1);
	}

	ret = FUNC3(hdl,
	    IWMBT_BULK_IN_ENDPOINT_ADDR,
	    buf,
	    sizeof(buf),
	    &transferred,
	    timeout);

	if (ret < 0) {
		FUNC2("libusb_bulk_transfer() failed: err=%s",
		    FUNC4(ret));
		return (-1);
	}

	return (0);
}