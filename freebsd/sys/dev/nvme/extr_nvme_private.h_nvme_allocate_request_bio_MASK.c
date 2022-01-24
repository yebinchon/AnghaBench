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
struct TYPE_2__ {struct bio* bio; } ;
struct nvme_request {TYPE_1__ u; int /*<<< orphan*/  type; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  nvme_cb_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_REQUEST_BIO ; 
 struct nvme_request* FUNC0 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static __inline struct nvme_request *
FUNC1(struct bio *bio, nvme_cb_fn_t cb_fn, void *cb_arg)
{
	struct nvme_request *req;

	req = FUNC0(cb_fn, cb_arg);
	if (req != NULL) {
		req->type = NVME_REQUEST_BIO;
		req->u.bio = bio;
	}
	return (req);
}