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
struct fw_xfer {int flag; int resp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fw_xfer*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

void
FUNC2(struct fw_xfer *xfer)
{
#if 0
	printf("asyreq done flag=0x%02x resp=%d\n",
				xfer->flag, xfer->resp);
#endif
	FUNC0(xfer);
}