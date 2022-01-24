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
struct work_request_hdr {int dummy; } ;
struct ulp_txpkt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct work_request_hdr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int M_TCB_RSS_INFO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  W_TCB_RSS_INFO ; 
 struct ulp_txpkt* FUNC2 (struct ulp_txpkt*,int) ; 
 struct ulp_txpkt* FUNC3 (struct ulp_txpkt*,int) ; 
 struct ulp_txpkt* FUNC4 (struct ulp_txpkt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(int tid, struct work_request_hdr *wrh, int wrlen, int qid)
{
	struct ulp_txpkt *ulpmc;

	FUNC0(wrh, wrlen, 0, 0);
	ulpmc = (struct ulp_txpkt *)(wrh + 1);
	ulpmc = FUNC4(ulpmc, W_TCB_RSS_INFO,
	    FUNC1(M_TCB_RSS_INFO), FUNC1(qid), tid, 0);
	ulpmc = FUNC2(ulpmc, tid);
	ulpmc = FUNC3(ulpmc, tid);
}