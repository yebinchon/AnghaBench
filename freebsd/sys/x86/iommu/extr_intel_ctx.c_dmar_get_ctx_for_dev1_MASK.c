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
typedef  int /*<<< orphan*/  uint16_t ;
struct sf_buf {int dummy; } ;
struct dmar_unit {int unit; int hw_gcmd; int /*<<< orphan*/  segment; int /*<<< orphan*/  domains; } ;
struct dmar_domain {int /*<<< orphan*/  agaw; int /*<<< orphan*/  mgaw; int /*<<< orphan*/  domain; } ;
struct TYPE_2__ {int /*<<< orphan*/ * owner; } ;
struct dmar_ctx {int /*<<< orphan*/  refs; TYPE_1__ ctx_tag; struct dmar_domain* domain; } ;
typedef  int /*<<< orphan*/  dmar_ctx_entry_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int DMAR_GCMD_TE ; 
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct dmar_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DMAR_CTX ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TD_PINNED_ASSERT ; 
 int /*<<< orphan*/  TD_PREP_PINNED_ASSERT ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC7 (struct dmar_ctx*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dmar_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct dmar_ctx* FUNC10 (struct dmar_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dmar_ctx*) ; 
 struct dmar_domain* FUNC12 (struct dmar_unit*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct dmar_domain*) ; 
 int FUNC14 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC15 (struct dmar_unit*,int) ; 
 struct dmar_ctx* FUNC16 (struct dmar_unit*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct dmar_unit*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct dmar_unit*,struct dmar_ctx*) ; 
 int /*<<< orphan*/ * FUNC19 (struct dmar_ctx*,struct sf_buf**) ; 
 int /*<<< orphan*/  FUNC20 (struct sf_buf*) ; 
 int FUNC21 (struct dmar_domain*,int /*<<< orphan*/ *,int,int,int,int,int,void const*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct dmar_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (char*,int,...) ; 

__attribute__((used)) static struct dmar_ctx *
FUNC27(struct dmar_unit *dmar, device_t dev, uint16_t rid,
    int dev_domain, int dev_busno, const void *dev_path, int dev_path_len,
    bool id_mapped, bool rmrr_init)
{
	struct dmar_domain *domain, *domain1;
	struct dmar_ctx *ctx, *ctx1;
	dmar_ctx_entry_t *ctxp;
	struct sf_buf *sf;
	int bus, slot, func, error;
	bool enable;

	if (dev != NULL) {
		bus = FUNC23(dev);
		slot = FUNC25(dev);
		func = FUNC24(dev);
	} else {
		bus = FUNC4(rid);
		slot = FUNC6(rid);
		func = FUNC5(rid);
	}
	enable = false;
	TD_PREP_PINNED_ASSERT;
	FUNC0(dmar);
	ctx = FUNC16(dmar, rid);
	error = 0;
	if (ctx == NULL) {
		/*
		 * Perform the allocations which require sleep or have
		 * higher chance to succeed if the sleep is allowed.
		 */
		FUNC1(dmar);
		FUNC15(dmar, FUNC4(rid));
		domain1 = FUNC12(dmar, id_mapped);
		if (domain1 == NULL) {
			TD_PINNED_ASSERT;
			return (NULL);
		}
		if (!id_mapped) {
			error = FUNC21(domain1, dev, bus,
			    slot, func, dev_domain, dev_busno, dev_path,
			    dev_path_len);
			if (error != 0) {
				FUNC13(domain1);
				TD_PINNED_ASSERT;
				return (NULL);
			}
		}
		ctx1 = FUNC10(domain1, rid);
		ctxp = FUNC19(ctx1, &sf);
		FUNC0(dmar);

		/*
		 * Recheck the contexts, other thread might have
		 * already allocated needed one.
		 */
		ctx = FUNC16(dmar, rid);
		if (ctx == NULL) {
			domain = domain1;
			ctx = ctx1;
			FUNC11(ctx);
			ctx->ctx_tag.owner = dev;
			FUNC8(ctx, dev);

			/*
			 * This is the first activated context for the
			 * DMAR unit.  Enable the translation after
			 * everything is set up.
			 */
			if (FUNC2(&dmar->domains))
				enable = true;
			FUNC3(&dmar->domains, domain, link);
			FUNC7(ctx, ctxp, false);
			if (dev != NULL) {
				FUNC9(dev,
			    "dmar%d pci%d:%d:%d:%d rid %x domain %d mgaw %d "
				    "agaw %d %s-mapped\n",
				    dmar->unit, dmar->segment, bus, slot,
				    func, rid, domain->domain, domain->mgaw,
				    domain->agaw, id_mapped ? "id" : "re");
			}
			FUNC20(sf);
		} else {
			FUNC20(sf);
			FUNC13(domain1);
			/* Nothing needs to be done to destroy ctx1. */
			FUNC22(ctx1, M_DMAR_CTX);
			domain = ctx->domain;
			ctx->refs++; /* tag referenced us */
		}
	} else {
		domain = ctx->domain;
		if (ctx->ctx_tag.owner == NULL)
			ctx->ctx_tag.owner = dev;
		ctx->refs++; /* tag referenced us */
	}

	error = FUNC17(dmar, enable);
	if (error != 0) {
		FUNC18(dmar, ctx);
		TD_PINNED_ASSERT;
		return (NULL);
	}

	/*
	 * The dmar lock was potentially dropped between check for the
	 * empty context list and now.  Recheck the state of GCMD_TE
	 * to avoid unneeded command.
	 */
	if (enable && !rmrr_init && (dmar->hw_gcmd & DMAR_GCMD_TE) == 0) {
		error = FUNC14(dmar);
		if (error == 0) {
			if (bootverbose) {
				FUNC26("dmar%d: enabled translation\n",
				    dmar->unit);
			}
		} else {
			FUNC26("dmar%d: enabling translation failed, "
			    "error %d\n", dmar->unit, error);
			FUNC18(dmar, ctx);
			TD_PINNED_ASSERT;
			return (NULL);
		}
	}
	FUNC1(dmar);
	TD_PINNED_ASSERT;
	return (ctx);
}