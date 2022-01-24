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
 int /*<<< orphan*/  EXT_BUFFER ; 
 char* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FORCE_SHORT_XFER ; 
 int /*<<< orphan*/  MANUAL_STATUS ; 
 int /*<<< orphan*/  NO_PIPE_OK ; 
 int /*<<< orphan*/  PIPE_BOF ; 
 int /*<<< orphan*/  PROXY_BUFFER ; 
 int /*<<< orphan*/  SHORT_FRAMES_OK ; 
 int /*<<< orphan*/  SHORT_XFER_OK ; 
 int /*<<< orphan*/  STALL_PIPE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*,char*,char*,char*,char*,char*,char*) ; 

__attribute__((used)) static void
FUNC2(uint32_t flags)
{
	FUNC1(" flags %#x <%s%s%s%s%s%s%s%s%s0>\n",
	    flags,
	    FUNC0(flags, FORCE_SHORT_XFER),
	    FUNC0(flags, SHORT_XFER_OK),
	    FUNC0(flags, SHORT_FRAMES_OK),
	    FUNC0(flags, PIPE_BOF),
	    FUNC0(flags, PROXY_BUFFER),
	    FUNC0(flags, EXT_BUFFER),
	    FUNC0(flags, MANUAL_STATUS),
	    FUNC0(flags, NO_PIPE_OK),
	    FUNC0(flags, STALL_PIPE));
}