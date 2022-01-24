#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_4__ {int /*<<< orphan*/  rqs_flags; int /*<<< orphan*/  rqs_seqno; int /*<<< orphan*/  rqs_entry_count; int /*<<< orphan*/  rqs_entry_type; } ;
typedef  TYPE_1__ isphdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(ispsoftc_t *isp, isphdr_t *hpsrc, isphdr_t *hpdst)
{
	if (FUNC1(isp)) {
		FUNC0(isp, &hpsrc->rqs_entry_type, hpdst->rqs_entry_count);
		FUNC0(isp, &hpsrc->rqs_entry_count, hpdst->rqs_entry_type);
		FUNC0(isp, &hpsrc->rqs_seqno, hpdst->rqs_flags);
		FUNC0(isp, &hpsrc->rqs_flags, hpdst->rqs_seqno);
	} else {
		FUNC0(isp, &hpsrc->rqs_entry_type, hpdst->rqs_entry_type);
		FUNC0(isp, &hpsrc->rqs_entry_count, hpdst->rqs_entry_count);
		FUNC0(isp, &hpsrc->rqs_seqno, hpdst->rqs_seqno);
		FUNC0(isp, &hpsrc->rqs_flags, hpdst->rqs_flags);
	}
}