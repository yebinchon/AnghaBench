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
struct TYPE_2__ {int /*<<< orphan*/  tstamp_usec; int /*<<< orphan*/  tstamp_sec; int /*<<< orphan*/  len; int /*<<< orphan*/  op; int /*<<< orphan*/  threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; } ;

/* Variables and functions */
#define  ATH_ALQ_EDMA_RXSTATUS 130 
#define  ATH_ALQ_EDMA_TXDESC 129 
#define  ATH_ALQ_EDMA_TXSTATUS 128 
 int /*<<< orphan*/  FUNC0 (struct if_ath_alq_payload*) ; 
 int /*<<< orphan*/  FUNC1 (struct if_ath_alq_payload*) ; 
 int /*<<< orphan*/  FUNC2 (struct if_ath_alq_payload*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int /*<<< orphan*/ ,int,int) ; 

void
FUNC7(struct if_ath_alq_payload *a)
{

		switch (FUNC3(a->hdr.op)) {
			case ATH_ALQ_EDMA_TXSTATUS:	/* TXSTATUS */
				FUNC2(a);
				break;
			case ATH_ALQ_EDMA_RXSTATUS:	/* RXSTATUS */
				FUNC0(a);
				break;
			case ATH_ALQ_EDMA_TXDESC:	/* TXDESC */
				FUNC1(a);
				break;
			default:
				FUNC6("[%d.%06d] [%lld] op: %d; len %d\n",
				    FUNC4(a->hdr.tstamp_sec),
				    FUNC4(a->hdr.tstamp_usec),
				    FUNC5(a->hdr.threadid),
				    FUNC3(a->hdr.op), FUNC3(a->hdr.len));
		}
}