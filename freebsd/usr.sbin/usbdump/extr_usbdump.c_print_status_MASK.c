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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  BDMA_ENABLE ; 
 int /*<<< orphan*/  BDMA_NO_POST_SYNC ; 
 int /*<<< orphan*/  BDMA_SETUP ; 
 int /*<<< orphan*/  BW_RECLAIMED ; 
 int /*<<< orphan*/  CAN_CANCEL_IMMED ; 
 int /*<<< orphan*/  CONTROL_ACT ; 
 int /*<<< orphan*/  CONTROL_HDR ; 
 int /*<<< orphan*/  CONTROL_STALL ; 
 int /*<<< orphan*/  CONTROL_XFR ; 
 int /*<<< orphan*/  CURR_DMA_SET ; 
 int /*<<< orphan*/  DID_CLOSE ; 
 int /*<<< orphan*/  DID_DMA_DELAY ; 
 int /*<<< orphan*/  DOING_CALLBACK ; 
 int /*<<< orphan*/  DRAINING ; 
 int /*<<< orphan*/  ISOCHRONOUS_XFR ; 
 int /*<<< orphan*/  OPEN ; 
 int /*<<< orphan*/  SHORT_FRAMES_OK ; 
 int /*<<< orphan*/  SHORT_XFER_OK ; 
 int /*<<< orphan*/  STARTED ; 
 char* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANSFERRING ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ; 

__attribute__((used)) static void
FUNC2(uint32_t status)
{
	FUNC1(" status %#x <%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s0>\n",
	    status, 
	    FUNC0(status, OPEN),
	    FUNC0(status, TRANSFERRING),
	    FUNC0(status, DID_DMA_DELAY),
	    FUNC0(status, DID_CLOSE),
	    FUNC0(status, DRAINING),
	    FUNC0(status, STARTED),
	    FUNC0(status, BW_RECLAIMED),
	    FUNC0(status, CONTROL_XFR),
	    FUNC0(status, CONTROL_HDR),
	    FUNC0(status, CONTROL_ACT),
	    FUNC0(status, CONTROL_STALL),
	    FUNC0(status, SHORT_FRAMES_OK),
	    FUNC0(status, SHORT_XFER_OK),
	    FUNC0(status, BDMA_ENABLE),
	    FUNC0(status, BDMA_NO_POST_SYNC),
	    FUNC0(status, BDMA_SETUP),
	    FUNC0(status, ISOCHRONOUS_XFR),
	    FUNC0(status, CURR_DMA_SET),
	    FUNC0(status, CAN_CANCEL_IMMED),
	    FUNC0(status, DOING_CALLBACK));
}