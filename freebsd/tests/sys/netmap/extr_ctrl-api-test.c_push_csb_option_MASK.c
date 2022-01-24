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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  nro_reqtype; } ;
struct nmreq_opt_csb {uintptr_t csb_atok; uintptr_t csb_ktoa; TYPE_1__ nro_opt; } ;
struct nm_csb_ktoa {int dummy; } ;
struct nm_csb_atok {int dummy; } ;
struct TestContext {scalar_t__ csb; int /*<<< orphan*/  nr_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  NETMAP_REQ_OPT_CSB ; 
 int /*<<< orphan*/  NR_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nmreq_opt_csb*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct TestContext*) ; 
 int FUNC5 (struct TestContext*) ; 
 int FUNC6 (scalar_t__*,int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct TestContext*) ; 

__attribute__((used)) static int
FUNC9(struct TestContext *ctx, struct nmreq_opt_csb *opt)
{
	size_t csb_size;
	int num_entries;
	int ret;

	ctx->nr_flags |= NR_EXCLUSIVE;

	/* Get port info in order to use num_registered_rings(). */
	ret = FUNC5(ctx);
	if (ret != 0) {
		return ret;
	}
	num_entries = FUNC4(ctx);

	csb_size = (sizeof(struct nm_csb_atok) + sizeof(struct nm_csb_ktoa)) *
	           num_entries;
	FUNC0(csb_size > 0);
	if (ctx->csb) {
		FUNC2(ctx->csb);
	}
	ret = FUNC6(&ctx->csb, sizeof(struct nm_csb_atok), csb_size);
	if (ret != 0) {
		FUNC7("Failed to allocate CSB memory\n");
		FUNC1(EXIT_FAILURE);
	}

	FUNC3(opt, 0, sizeof(*opt));
	opt->nro_opt.nro_reqtype = NETMAP_REQ_OPT_CSB;
	opt->csb_atok            = (uintptr_t)ctx->csb;
	opt->csb_ktoa            = (uintptr_t)(((uint8_t *)ctx->csb) +
                                    sizeof(struct nm_csb_atok) * num_entries);

	FUNC7("Pushing option NETMAP_REQ_OPT_CSB\n");
	FUNC8(&opt->nro_opt, ctx);

	return 0;
}