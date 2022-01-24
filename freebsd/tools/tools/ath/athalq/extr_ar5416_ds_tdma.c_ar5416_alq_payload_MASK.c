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
struct TYPE_2__ {int /*<<< orphan*/  tstamp; int /*<<< orphan*/  len; int /*<<< orphan*/  op; int /*<<< orphan*/  threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; } ;

/* Variables and functions */
#define  ATH_ALQ_EDMA_RXSTATUS 135 
#define  ATH_ALQ_EDMA_TXDESC 134 
#define  ATH_ALQ_EDMA_TXSTATUS 133 
#define  ATH_ALQ_TDMA_BEACON_STATE 132 
#define  ATH_ALQ_TDMA_SLOT_CALC 131 
#define  ATH_ALQ_TDMA_TIMER_CONFIG 130 
#define  ATH_ALQ_TDMA_TIMER_SET 129 
#define  ATH_ALQ_TDMA_TSF_ADJUST 128 
 int /*<<< orphan*/  FUNC0 (struct if_ath_alq_payload*) ; 
 int /*<<< orphan*/  FUNC1 (struct if_ath_alq_payload*) ; 
 int /*<<< orphan*/  FUNC2 (struct if_ath_alq_payload*) ; 
 int /*<<< orphan*/  FUNC3 (struct if_ath_alq_payload*) ; 
 int /*<<< orphan*/  FUNC4 (struct if_ath_alq_payload*) ; 
 int /*<<< orphan*/  FUNC5 (struct if_ath_alq_payload*) ; 
 int /*<<< orphan*/  FUNC6 (struct if_ath_alq_payload*) ; 
 int /*<<< orphan*/  FUNC7 (struct if_ath_alq_payload*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int /*<<< orphan*/ ,int,int) ; 

void
FUNC12(struct if_ath_alq_payload *a)
{

		switch (FUNC8(a->hdr.op)) {
			case ATH_ALQ_EDMA_TXSTATUS:	/* TXSTATUS */
				FUNC2(a);
				break;
			case ATH_ALQ_EDMA_RXSTATUS:	/* RXSTATUS */
				FUNC0(a);
				break;
			case ATH_ALQ_EDMA_TXDESC:	/* TXDESC */
				FUNC1(a);
				break;
			case ATH_ALQ_TDMA_BEACON_STATE:
				FUNC3(a);
				break;
			case ATH_ALQ_TDMA_TIMER_CONFIG:
				FUNC5(a);
				break;
			case ATH_ALQ_TDMA_SLOT_CALC:
				FUNC4(a);
				break;
			case ATH_ALQ_TDMA_TSF_ADJUST:
				FUNC7(a);
				break;
			case ATH_ALQ_TDMA_TIMER_SET:
				FUNC6(a);
				break;
			default:
				FUNC11("[%d] [%lld] op: %d; len %d\n",
				    FUNC9(a->hdr.tstamp),
				    FUNC10(a->hdr.threadid),
				    FUNC8(a->hdr.op), FUNC8(a->hdr.len));
		}
}