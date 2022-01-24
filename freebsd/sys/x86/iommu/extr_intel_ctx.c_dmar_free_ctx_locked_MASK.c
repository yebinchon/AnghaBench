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
struct sf_buf {int dummy; } ;
struct dmar_unit {int hw_ecap; scalar_t__ qi_enabled; } ;
struct dmar_domain {int dummy; } ;
struct dmar_ctx {int refs; int flags; struct dmar_domain* domain; } ;
struct TYPE_4__ {scalar_t__ ctx2; int /*<<< orphan*/  ctx1; } ;
typedef  TYPE_1__ dmar_ctx_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int DMAR_CTX_DISABLED ; 
 int DMAR_ECAP_DI ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  M_DMAR_CTX ; 
 int /*<<< orphan*/  TD_PINNED_ASSERT ; 
 int /*<<< orphan*/  TD_PREP_PINNED_ASSERT ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_unit*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC7 (struct dmar_unit*) ; 
 TYPE_1__* FUNC8 (struct dmar_ctx*,struct sf_buf**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC11 (struct sf_buf*) ; 
 int /*<<< orphan*/  FUNC12 (struct dmar_unit*,struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC13 (struct dmar_ctx*,int /*<<< orphan*/ ) ; 

void
FUNC14(struct dmar_unit *dmar, struct dmar_ctx *ctx)
{
	struct sf_buf *sf;
	dmar_ctx_entry_t *ctxp;
	struct dmar_domain *domain;

	FUNC0(dmar);
	FUNC3(ctx->refs >= 1,
	    ("dmar %p ctx %p refs %u", dmar, ctx, ctx->refs));

	/*
	 * If our reference is not last, only the dereference should
	 * be performed.
	 */
	if (ctx->refs > 1) {
		ctx->refs--;
		FUNC2(dmar);
		return;
	}

	FUNC3((ctx->flags & DMAR_CTX_DISABLED) == 0,
	    ("lost ref on disabled ctx %p", ctx));

	/*
	 * Otherwise, the context entry must be cleared before the
	 * page table is destroyed.  The mapping of the context
	 * entries page could require sleep, unlock the dmar.
	 */
	FUNC2(dmar);
	TD_PREP_PINNED_ASSERT;
	ctxp = FUNC8(ctx, &sf);
	FUNC1(dmar);
	FUNC3(ctx->refs >= 1,
	    ("dmar %p ctx %p refs %u", dmar, ctx, ctx->refs));

	/*
	 * Other thread might have referenced the context, in which
	 * case again only the dereference should be performed.
	 */
	if (ctx->refs > 1) {
		ctx->refs--;
		FUNC2(dmar);
		FUNC11(sf);
		TD_PINNED_ASSERT;
		return;
	}

	FUNC3((ctx->flags & DMAR_CTX_DISABLED) == 0,
	    ("lost ref on disabled ctx %p", ctx));

	/*
	 * Clear the context pointer and flush the caches.
	 * XXXKIB: cannot do this if any RMRR entries are still present.
	 */
	FUNC9(&ctxp->ctx1);
	ctxp->ctx2 = 0;
	FUNC5(dmar, ctxp);
	FUNC6(dmar);
	if ((dmar->hw_ecap & DMAR_ECAP_DI) != 0) {
		if (dmar->qi_enabled)
			FUNC10(dmar);
		else
			FUNC7(dmar);
	}
	FUNC11(sf);
	domain = ctx->domain;
	FUNC4(ctx);
	FUNC13(ctx, M_DMAR_CTX);
	FUNC12(dmar, domain);
	TD_PINNED_ASSERT;
}