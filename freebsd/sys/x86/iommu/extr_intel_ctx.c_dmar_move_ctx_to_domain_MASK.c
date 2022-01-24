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
struct sf_buf {int dummy; } ;
struct dmar_unit {int unit; } ;
struct dmar_domain {int domain; int flags; struct dmar_unit* dmar; } ;
struct dmar_ctx {int rid; struct dmar_domain* domain; } ;
typedef  int /*<<< orphan*/  dmar_ctx_entry_t ;

/* Variables and functions */
 int DMAR_DOMAIN_IDMAP ; 
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  TD_PINNED_ASSERT ; 
 int /*<<< orphan*/  TD_PREP_PINNED_ASSERT ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_ctx*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_ctx*) ; 
 int FUNC5 (struct dmar_unit*,int) ; 
 int /*<<< orphan*/ * FUNC6 (struct dmar_ctx*,struct sf_buf**) ; 
 int /*<<< orphan*/  FUNC7 (struct sf_buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct dmar_unit*,struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,int,int,char*) ; 

int
FUNC10(struct dmar_domain *domain, struct dmar_ctx *ctx)
{
	struct dmar_unit *dmar;
	struct dmar_domain *old_domain;
	dmar_ctx_entry_t *ctxp;
	struct sf_buf *sf;
	int error;

	dmar = domain->dmar;
	old_domain = ctx->domain;
	if (domain == old_domain)
		return (0);
	FUNC1(old_domain->dmar == dmar,
	    ("domain %p %u moving between dmars %u %u", domain,
	    domain->domain, old_domain->dmar->unit, domain->dmar->unit));
	TD_PREP_PINNED_ASSERT;

	ctxp = FUNC6(ctx, &sf);
	FUNC0(dmar);
	FUNC4(ctx);
	ctx->domain = domain;
	FUNC3(ctx);
	FUNC2(ctx, ctxp, true);
	FUNC7(sf);
	error = FUNC5(dmar, true);
	/* If flush failed, rolling back would not work as well. */
	FUNC9("dmar%d rid %x domain %d->%d %s-mapped\n",
	    dmar->unit, ctx->rid, old_domain->domain, domain->domain,
	    (domain->flags & DMAR_DOMAIN_IDMAP) != 0 ? "id" : "re");
	FUNC8(dmar, old_domain);
	TD_PINNED_ASSERT;
	return (error);
}