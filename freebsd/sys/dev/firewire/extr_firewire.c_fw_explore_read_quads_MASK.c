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
typedef  int /*<<< orphan*/  uint32_t ;
struct fw_xfer {int resp; } ;
struct fw_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fw_xfer*) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_xfer*) ; 
 int /*<<< orphan*/  fw_xferwake ; 
 struct fw_xfer* FUNC2 (struct fw_device*,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct fw_device *fwdev, int offset,
    uint32_t *quad, int length)
{
	struct fw_xfer *xfer;
	uint32_t tmp;
	int i, error;

	for (i = 0; i < length; i++, offset += sizeof(uint32_t)) {
		xfer = FUNC2(fwdev, NULL, -1, 0xffff,
		    0xf0000000 | offset, &tmp, fw_xferwake);
		if (xfer == NULL)
			return (-1);
		FUNC1(xfer);

		if (xfer->resp == 0)
			quad[i] = FUNC3(tmp);

		error = xfer->resp;
		FUNC0(xfer);
		if (error)
			return (error);
	}
	return (0);
}