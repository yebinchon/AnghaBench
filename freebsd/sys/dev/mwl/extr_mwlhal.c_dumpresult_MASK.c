#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct mwl_hal_priv {int /*<<< orphan*/  mh_dev; scalar_t__ mh_cmdbuf; } ;
struct TYPE_2__ {int /*<<< orphan*/  Result; int /*<<< orphan*/  SeqNum; int /*<<< orphan*/  Cmd; int /*<<< orphan*/  MacId; int /*<<< orphan*/  Length; } ;
typedef  TYPE_1__ FWCmdHdr ;

/* Variables and functions */
 int HostCmd_RESULT_PARTIAL_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(struct mwl_hal_priv *mh, int showresult)
{
	const FWCmdHdr *h = (const FWCmdHdr *)mh->mh_cmdbuf;
	const uint8_t *cp;
	int len, i;

	len = FUNC1(h->Length);
#ifdef MWL_MBSS_SUPPORT
	device_printf(mh->mh_dev, "Cmd %s Length %d SeqNum %d MacId %d",
	    mwlcmdname(le16toh(h->Cmd) &~ 0x8000), len, h->SeqNum, h->MacId);
#else
	FUNC0(mh->mh_dev, "Cmd %s Length %d SeqNum %d",
	    FUNC2(FUNC1(h->Cmd) &~ 0x8000), len, FUNC1(h->SeqNum));
#endif
	if (showresult) {
		const char *results[] =
		    { "OK", "ERROR", "NOT_SUPPORT", "PENDING", "BUSY",
		      "PARTIAL_DATA" };
		int result = FUNC1(h->Result);

		if (result <= HostCmd_RESULT_PARTIAL_DATA)
			FUNC3(" Result %s", results[result]);
		else
			FUNC3(" Result %d", result);
	}
	cp = (const uint8_t *)h;
	for (i = 0; i < len; i++) {
		if ((i % 16) == 0)
			FUNC3("\n%02x", cp[i]);
		else
			FUNC3(" %02x", cp[i]);
	}
	FUNC3("\n");
}