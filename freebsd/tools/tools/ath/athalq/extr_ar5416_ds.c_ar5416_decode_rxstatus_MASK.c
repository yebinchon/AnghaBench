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
struct ar5416_desc {int ds_rxstatus8; int ds_rxstatus0; int ds_rxstatus2; int ds_link; int ds_data; int ds_ctl0; int ds_ctl1; int ds_rxstatus4; int ds_rxstatus1; int ds_rxstatus3; int ds_rxstatus5; int ds_rxstatus6; int ds_rxstatus7; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_2040 ; 
 int /*<<< orphan*/  AR_CRCErr ; 
 int AR_DataLen ; 
 int /*<<< orphan*/  AR_DecryptCRCErr ; 
 int /*<<< orphan*/  AR_DupFrame ; 
 int /*<<< orphan*/  AR_GI ; 
 int /*<<< orphan*/  AR_HiRxChain ; 
 int /*<<< orphan*/  AR_KeyIdx ; 
 int /*<<< orphan*/  AR_KeyMiss ; 
 int /*<<< orphan*/  AR_MichaelErr ; 
 int /*<<< orphan*/  AR_NumDelim ; 
 int /*<<< orphan*/  AR_PHYErr ; 
 int /*<<< orphan*/  AR_PHYErrCode ; 
 int /*<<< orphan*/  AR_PostDelimCRCErr ; 
 int /*<<< orphan*/  AR_PreDelimCRCErr ; 
 int /*<<< orphan*/  AR_RxAggr ; 
 int /*<<< orphan*/  AR_RxAntenna ; 
 int /*<<< orphan*/  AR_RxDone ; 
 int /*<<< orphan*/  AR_RxFrameOK ; 
 int /*<<< orphan*/  AR_RxKeyIdxValid ; 
 int /*<<< orphan*/  AR_RxMore ; 
 int /*<<< orphan*/  AR_RxMoreAggr ; 
 int /*<<< orphan*/  AR_RxRSSIAnt00 ; 
 int /*<<< orphan*/  AR_RxRSSIAnt01 ; 
 int /*<<< orphan*/  AR_RxRSSIAnt02 ; 
 int /*<<< orphan*/  AR_RxRSSIAnt10 ; 
 int /*<<< orphan*/  AR_RxRSSIAnt11 ; 
 int /*<<< orphan*/  AR_RxRSSIAnt12 ; 
 int /*<<< orphan*/  AR_RxRSSICombined ; 
 int /*<<< orphan*/  AR_RxRate ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ar5416_desc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(struct if_ath_alq_payload *a)
{
	struct ar5416_desc rxs;

	/* XXX assumes rxs is smaller than PAYLOAD_LEN! */
	FUNC4(&rxs, &a->payload, sizeof(struct ar5416_desc));

	FUNC5("[%u.%06u] [%llu] RXSTATUS: RxDone=%d, RxRate=0x%02x, TS=0x%08x\n",
	    (unsigned int) FUNC2(a->hdr.tstamp_sec),
	    (unsigned int) FUNC2(a->hdr.tstamp_usec),
	    (unsigned long long) FUNC3(a->hdr.threadid),
	    FUNC0(rxs.ds_rxstatus8, AR_RxDone),
	    FUNC1(rxs.ds_rxstatus0, AR_RxRate),
	    rxs.ds_rxstatus2);

	FUNC5("  link=0x%08x, data=0x%08x, ctl0=0x%08x, ctl2=0x%08x\n",
	    rxs.ds_link,
	    rxs.ds_data,
	    rxs.ds_ctl0,
	    rxs.ds_ctl1);

	/* status0 */
	/*
	 * XXX TODO: For AR9285, the chain 1 and chain 2 RSSI values
	 * acutally contain the RX mixer configuration
	 */
	FUNC5("  RSSICtl[0]=%d, RSSICtl[1]=%d, RSSICtl[2]=%d\n",
	    FUNC1(rxs.ds_rxstatus0, AR_RxRSSIAnt00),
	    FUNC1(rxs.ds_rxstatus0, AR_RxRSSIAnt01),
	    FUNC1(rxs.ds_rxstatus0, AR_RxRSSIAnt02));

	/* status4 */
	FUNC5("  RSSIExt[0]=%d, RSSIExt[1]=%d, RSSIExt[2]=%d, RSSIComb=%d\n",
	    FUNC1(rxs.ds_rxstatus4, AR_RxRSSIAnt10),
	    FUNC1(rxs.ds_rxstatus4, AR_RxRSSIAnt11),
	    FUNC1(rxs.ds_rxstatus4, AR_RxRSSIAnt12),
	    FUNC1(rxs.ds_rxstatus4, AR_RxRSSICombined));

	/* status2 */
	FUNC5("  RxTimestamp=0x%08x,", rxs.ds_rxstatus2);

	/* status1 */
	FUNC5(" DataLen=%d, RxMore=%d, NumDelim=%d\n",
	    rxs.ds_rxstatus1 & AR_DataLen,
	    FUNC0(rxs.ds_rxstatus1, AR_RxMore),
	    FUNC1(rxs.ds_rxstatus1, AR_NumDelim));

	/* status3 - RxRate however is for Owl 2.0 */
	FUNC5("  GI=%d, 2040=%d, RxRate=0x%02x, DupFrame=%d, RxAnt=0x%08x\n",
	    FUNC0(rxs.ds_rxstatus3, AR_GI),
	    FUNC0(rxs.ds_rxstatus3, AR_2040),
	    FUNC1(rxs.ds_rxstatus0, AR_RxRate),
	    FUNC0(rxs.ds_rxstatus3, AR_DupFrame),
	    FUNC1(rxs.ds_rxstatus3, AR_RxAntenna));

	/* status5 */
	/* status6 */
	/* status7 */
	FUNC5("  RxEvm0=0x%08x, RxEvm1=0x%08x, RxEvm2=0x%08x\n",
	    rxs.ds_rxstatus5,
	    rxs.ds_rxstatus6,
	    rxs.ds_rxstatus7);
	
	/* status8 */
	FUNC5("  RxDone=%d, RxFrameOk=%d, CrcErr=%d, DecryptCrcErr=%d\n",
	    FUNC0(rxs.ds_rxstatus8, AR_RxDone),
	    FUNC0(rxs.ds_rxstatus8, AR_RxFrameOK),
	    FUNC0(rxs.ds_rxstatus8, AR_CRCErr),
	    FUNC0(rxs.ds_rxstatus8, AR_DecryptCRCErr));
	FUNC5("  PhyErr=%d, MichaelErr=%d, PreDelimCRCErr=%d, KeyIdxValid=%d\n",
	    FUNC0(rxs.ds_rxstatus8, AR_PHYErr),
	    FUNC0(rxs.ds_rxstatus8, AR_MichaelErr),
	    FUNC0(rxs.ds_rxstatus8, AR_PreDelimCRCErr),
	    FUNC0(rxs.ds_rxstatus8, AR_RxKeyIdxValid));

	FUNC5("  RxMoreAggr=%d, RxAggr=%d, PostDelimCRCErr=%d, HiRxChain=%d\n",
	    FUNC0(rxs.ds_rxstatus8, AR_RxMoreAggr),
	    FUNC0(rxs.ds_rxstatus8, AR_RxAggr),
	    FUNC0(rxs.ds_rxstatus8, AR_PostDelimCRCErr),
	    FUNC0(rxs.ds_rxstatus8, AR_HiRxChain));

	/* If PHY error, print that out. Otherwise, the key index */
	if (FUNC0(rxs.ds_rxstatus8, AR_PHYErr))
		FUNC5("  PhyErrCode=0x%02x",
		    FUNC1(rxs.ds_rxstatus8, AR_PHYErrCode));
	else
		FUNC5("  KeyIdx=0x%02x",
		    FUNC1(rxs.ds_rxstatus8, AR_KeyIdx));
	FUNC5(", KeyMiss=%d\n",
	    FUNC0(rxs.ds_rxstatus8, AR_KeyMiss));

	FUNC5("\n ------\n");
}