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
struct uio {int dummy; } ;
struct sctp_stream_queue_pending {int /*<<< orphan*/ * data; int /*<<< orphan*/  tail_mbuf; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  SCTP_FROM_SCTP_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct uio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct sctp_stream_queue_pending *sp,
    struct uio *uio,
    int resv_upfront)
{
	sp->data = FUNC2(uio, M_WAITOK, sp->length,
	    resv_upfront, 0);
	if (sp->data == NULL) {
		FUNC0(NULL, NULL, NULL, SCTP_FROM_SCTP_OUTPUT, ENOBUFS);
		return (ENOBUFS);
	}

	sp->tail_mbuf = FUNC1(sp->data);
	return (0);
}