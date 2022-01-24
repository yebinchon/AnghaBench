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
struct fw_xferq {int /*<<< orphan*/  queued; int /*<<< orphan*/  q; } ;
struct fw_xfer {int /*<<< orphan*/  flag; int /*<<< orphan*/  resp; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FWXF_SENTERR ; 
 struct fw_xfer* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_xfer*) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC3(struct fw_xferq *xferq)
{
	struct fw_xfer *xfer;

	while ((xfer = FUNC0(&xferq->q)) != NULL) {
		FUNC1(&xferq->q, link);
#if 0
		xferq->queued--;
#endif
		xfer->resp = EAGAIN;
		xfer->flag = FWXF_SENTERR;
		FUNC2(xfer);
	}
}