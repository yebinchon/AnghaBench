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
struct dmar_domain {scalar_t__ refs; scalar_t__ ctx_cnt; int /*<<< orphan*/  dmar; } ;
struct dmar_ctx {struct dmar_domain* domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC3(struct dmar_ctx *ctx)
{
	struct dmar_domain *domain;

	domain = ctx->domain;
	FUNC0(domain->dmar);
	FUNC1(domain->refs > 0,
	    ("domain %p ctx dtr refs %d", domain, domain->refs));
	FUNC1(domain->ctx_cnt >= domain->refs,
	    ("domain %p ctx dtr refs %d ctx_cnt %d", domain,
	    domain->refs, domain->ctx_cnt));
	domain->refs--;
	domain->ctx_cnt--;
	FUNC2(ctx, link);
}