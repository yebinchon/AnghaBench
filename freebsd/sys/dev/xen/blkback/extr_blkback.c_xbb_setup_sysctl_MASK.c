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
struct TYPE_2__ {int /*<<< orphan*/  ring_pages; } ;
struct xbb_softc {TYPE_1__ ring_config; int /*<<< orphan*/  max_request_size; int /*<<< orphan*/  max_request_segments; int /*<<< orphan*/  max_requests; int /*<<< orphan*/  request_shortages; int /*<<< orphan*/  kva_shortages; int /*<<< orphan*/  total_dispatch; int /*<<< orphan*/  normal_dispatch; int /*<<< orphan*/  forced_dispatch; int /*<<< orphan*/  reqs_completed_with_error; int /*<<< orphan*/  reqs_queued_for_completion; int /*<<< orphan*/  reqs_completed; int /*<<< orphan*/  reqs_received; int /*<<< orphan*/  no_coalesce_reqs; int /*<<< orphan*/  flush_interval; int /*<<< orphan*/  disable_flush; int /*<<< orphan*/  dev; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct xbb_softc *xbb)
{
	struct sysctl_ctx_list *sysctl_ctx = NULL;
	struct sysctl_oid      *sysctl_tree = NULL;
	
	sysctl_ctx = FUNC4(xbb->dev);
	if (sysctl_ctx == NULL)
		return;

	sysctl_tree = FUNC5(xbb->dev);
	if (sysctl_tree == NULL)
		return;

	FUNC0(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
		       "disable_flush", CTLFLAG_RW, &xbb->disable_flush, 0,
		       "fake the flush command");

	FUNC0(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
		       "flush_interval", CTLFLAG_RW, &xbb->flush_interval, 0,
		       "send a real flush for N flush requests");

	FUNC0(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
		       "no_coalesce_reqs", CTLFLAG_RW, &xbb->no_coalesce_reqs,0,
		       "Don't coalesce contiguous requests");

	FUNC2(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
			 "reqs_received", CTLFLAG_RW, &xbb->reqs_received,
			 "how many I/O requests we have received");

	FUNC2(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
			 "reqs_completed", CTLFLAG_RW, &xbb->reqs_completed,
			 "how many I/O requests have been completed");

	FUNC2(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
			 "reqs_queued_for_completion", CTLFLAG_RW,
			 &xbb->reqs_queued_for_completion,
			 "how many I/O requests queued but not yet pushed");

	FUNC2(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
			 "reqs_completed_with_error", CTLFLAG_RW,
			 &xbb->reqs_completed_with_error,
			 "how many I/O requests completed with error status");

	FUNC2(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
			 "forced_dispatch", CTLFLAG_RW, &xbb->forced_dispatch,
			 "how many I/O dispatches were forced");

	FUNC2(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
			 "normal_dispatch", CTLFLAG_RW, &xbb->normal_dispatch,
			 "how many I/O dispatches were normal");

	FUNC2(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
			 "total_dispatch", CTLFLAG_RW, &xbb->total_dispatch,
			 "total number of I/O dispatches");

	FUNC2(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
			 "kva_shortages", CTLFLAG_RW, &xbb->kva_shortages,
			 "how many times we have run out of KVA");

	FUNC2(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
			 "request_shortages", CTLFLAG_RW,
			 &xbb->request_shortages,
			 "how many times we have run out of requests");

	FUNC1(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
		        "max_requests", CTLFLAG_RD, &xbb->max_requests, 0,
		        "maximum outstanding requests (negotiated)");

	FUNC1(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
		        "max_request_segments", CTLFLAG_RD,
		        &xbb->max_request_segments, 0,
		        "maximum number of pages per requests (negotiated)");

	FUNC1(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
		        "max_request_size", CTLFLAG_RD,
		        &xbb->max_request_size, 0,
		        "maximum size in bytes of a request (negotiated)");

	FUNC1(sysctl_ctx, FUNC3(sysctl_tree), OID_AUTO,
		        "ring_pages", CTLFLAG_RD,
		        &xbb->ring_config.ring_pages, 0,
		        "communication channel pages (negotiated)");
}