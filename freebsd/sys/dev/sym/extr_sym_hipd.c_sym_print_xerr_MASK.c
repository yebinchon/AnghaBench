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
typedef  int /*<<< orphan*/  ccb_p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int XE_BAD_PHASE ; 
 int XE_EXTRA_DATA ; 
 int XE_PARITY_ERR ; 
 int XE_SODL_UNRUN ; 
 int XE_SWIDE_OVRUN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(ccb_p cp, int x_status)
{
	if (x_status & XE_PARITY_ERR) {
		FUNC0(cp);
		FUNC1 ("unrecovered SCSI parity error.\n");
	}
	if (x_status & XE_EXTRA_DATA) {
		FUNC0(cp);
		FUNC1 ("extraneous data discarded.\n");
	}
	if (x_status & XE_BAD_PHASE) {
		FUNC0(cp);
		FUNC1 ("illegal scsi phase (4/5).\n");
	}
	if (x_status & XE_SODL_UNRUN) {
		FUNC0(cp);
		FUNC1 ("ODD transfer in DATA OUT phase.\n");
	}
	if (x_status & XE_SWIDE_OVRUN) {
		FUNC0(cp);
		FUNC1 ("ODD transfer in DATA IN phase.\n");
	}
}