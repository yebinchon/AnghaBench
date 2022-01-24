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
struct TYPE_2__ {int /*<<< orphan*/  tstamp_usec; int /*<<< orphan*/  tstamp_sec; int /*<<< orphan*/  threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int /*<<< orphan*/  payload; } ;
struct ar5210_desc {int ds_link; int ds_data; int ds_status0; int ds_status1; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_CRCErr ; 
 int AR_DataLen ; 
 int /*<<< orphan*/  AR_DecryptCRCErr ; 
 int /*<<< orphan*/  AR_Done ; 
 int /*<<< orphan*/  AR_FrmRcvOK ; 
 int /*<<< orphan*/  AR_KeyCacheMiss ; 
 int /*<<< orphan*/  AR_KeyIdxValid ; 
 int /*<<< orphan*/  AR_More ; 
 int /*<<< orphan*/  AR_PHYErr ; 
 int /*<<< orphan*/  AR_RcvAntenna ; 
 int /*<<< orphan*/  AR_RcvSigStrength ; 
 int /*<<< orphan*/  AR_RcvTimestamp ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ar5210_desc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(struct if_ath_alq_payload *a)
{
	struct ar5210_desc rxs;

	/* XXX assumes rxs is smaller than PAYLOAD_LEN! */
	FUNC4(&rxs, &a->payload, sizeof(struct ar5210_desc));

	FUNC5("[%u.%06u] [%llu] RXSTATUS\n",
	    (unsigned int) FUNC2(a->hdr.tstamp_sec),
	    (unsigned int) FUNC2(a->hdr.tstamp_usec),
	    (unsigned long long) FUNC3(a->hdr.threadid));

	FUNC5("  link=0x%08x, data=0x%08x\n",
	    rxs.ds_link,
	    rxs.ds_data);

	/* ds_rxstatus0 */
	FUNC5("  DataLen=%d, ArMore=%d, RSSI=%d, RcvAntenna=0x%x\n",
	    rxs.ds_status0 & AR_DataLen,
	    FUNC0(rxs.ds_status0, AR_More),
	    FUNC1(rxs.ds_status0, AR_RcvSigStrength),
	    FUNC0(rxs.ds_status0, AR_RcvAntenna));

	/* ds_rxstatus1 */
	FUNC5("  RxDone=%d, RxFrameOk=%d, CrcErr=%d, DecryptCrcErr=%d\n",
	    FUNC0(rxs.ds_status1, AR_Done),
	    FUNC0(rxs.ds_status1, AR_FrmRcvOK),
	    FUNC0(rxs.ds_status1, AR_CRCErr),
	    FUNC0(rxs.ds_status1, AR_DecryptCRCErr));
	FUNC5("  KeyIdxValid=%d\n",
	    FUNC0(rxs.ds_status1, AR_KeyIdxValid));

	FUNC5("  PhyErrCode=0x%02x\n",
	    FUNC1(rxs.ds_status1, AR_PHYErr));

	FUNC5("  KeyMiss=%d\n",
	    FUNC0(rxs.ds_status1, AR_KeyCacheMiss));

	FUNC5("  Timetamp: 0x%05x\n",
	    FUNC1(rxs.ds_status1, AR_RcvTimestamp));

	FUNC5("\n ------\n");
}