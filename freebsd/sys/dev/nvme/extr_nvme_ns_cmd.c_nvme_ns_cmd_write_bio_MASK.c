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
typedef  int uint64_t ;
struct nvme_request {int /*<<< orphan*/  cmd; } ;
struct nvme_namespace {int /*<<< orphan*/  ctrlr; int /*<<< orphan*/  id; } ;
struct bio {int bio_offset; int bio_bcount; } ;
typedef  int /*<<< orphan*/  nvme_cb_fn_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct nvme_request* FUNC0 (struct bio*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nvme_request*) ; 
 int FUNC2 (struct nvme_namespace*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

int
FUNC4(struct nvme_namespace *ns, struct bio *bp,
    nvme_cb_fn_t cb_fn, void *cb_arg)
{
	struct nvme_request	*req;
	uint64_t		lba;
	uint64_t		lba_count;

	req = FUNC0(bp, cb_fn, cb_arg);

	if (req == NULL)
		return (ENOMEM);
	lba = bp->bio_offset / FUNC2(ns);
	lba_count = bp->bio_bcount / FUNC2(ns);
	FUNC3(&req->cmd, ns->id, lba, lba_count);

	FUNC1(ns->ctrlr, req);

	return (0);
}