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
struct ucma_multicast {scalar_t__ id; int /*<<< orphan*/  list; struct ucma_context* ctx; } ;
struct ucma_context {int /*<<< orphan*/  mc_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct ucma_multicast*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ucma_multicast*) ; 
 struct ucma_multicast* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  multicast_idr ; 
 int /*<<< orphan*/  mut ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ucma_multicast* FUNC6(struct ucma_context *ctx)
{
	struct ucma_multicast *mc;

	mc = FUNC2(sizeof(*mc), GFP_KERNEL);
	if (!mc)
		return NULL;

	FUNC4(&mut);
	mc->id = FUNC0(&multicast_idr, mc, 0, 0, GFP_KERNEL);
	FUNC5(&mut);
	if (mc->id < 0)
		goto error;

	mc->ctx = ctx;
	FUNC3(&mc->list, &ctx->mc_list);
	return mc;

error:
	FUNC1(mc);
	return NULL;
}