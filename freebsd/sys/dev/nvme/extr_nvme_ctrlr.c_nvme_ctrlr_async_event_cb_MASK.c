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
struct nvme_completion {int cdw0; } ;
struct nvme_async_event_request {int log_page_id; int /*<<< orphan*/  ctrlr; int /*<<< orphan*/  log_page_size; int /*<<< orphan*/  log_page_buffer; int /*<<< orphan*/  cpl; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_GLOBAL_NAMESPACE_TAG ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nvme_completion const*,int) ; 
 scalar_t__ FUNC2 (struct nvme_completion const*) ; 
 int /*<<< orphan*/  nvme_ctrlr_async_event_log_page_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nvme_async_event_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nvme_async_event_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct nvme_completion const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int,int) ; 

__attribute__((used)) static void
FUNC8(void *arg, const struct nvme_completion *cpl)
{
	struct nvme_async_event_request	*aer = arg;

	if (FUNC2(cpl)) {
		/*
		 *  Do not retry failed async event requests.  This avoids
		 *  infinite loops where a new async event request is submitted
		 *  to replace the one just failed, only to fail again and
		 *  perpetuate the loop.
		 */
		return;
	}

	/* Associated log page is in bits 23:16 of completion entry dw0. */
	aer->log_page_id = (cpl->cdw0 & 0xFF0000) >> 16;

	FUNC7(aer->ctrlr, "async event occurred (type 0x%x, info 0x%02x,"
	    " page 0x%02x)\n", (cpl->cdw0 & 0x07), (cpl->cdw0 & 0xFF00) >> 8,
	    aer->log_page_id);

	if (FUNC0(aer->log_page_id)) {
		aer->log_page_size = FUNC5(aer->ctrlr,
		    aer->log_page_id);
		FUNC1(&aer->cpl, cpl, sizeof(*cpl));
		FUNC3(aer->ctrlr, aer->log_page_id,
		    NVME_GLOBAL_NAMESPACE_TAG, aer->log_page_buffer,
		    aer->log_page_size, nvme_ctrlr_async_event_log_page_cb,
		    aer);
		/* Wait to notify consumers until after log page is fetched. */
	} else {
		FUNC6(aer->ctrlr, cpl, aer->log_page_id,
		    NULL, 0);

		/*
		 * Repost another asynchronous event request to replace the one
		 *  that just completed.
		 */
		FUNC4(aer->ctrlr, aer);
	}
}