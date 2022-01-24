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
typedef  int /*<<< orphan*/  uint16_t ;
struct dmar_unit {int dummy; } ;
struct dmar_ctx {int flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int DMAR_CTX_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_unit*,struct dmar_ctx*) ; 
 struct dmar_ctx* FUNC4 (struct dmar_unit*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

struct dmar_ctx *
FUNC10(struct dmar_unit *dmar, device_t dev, bool rmrr)
{
	device_t requester;
	struct dmar_ctx *ctx;
	bool disabled;
	uint16_t rid;

	requester = FUNC5(dev, &rid);

	/*
	 * If the user requested the IOMMU disabled for the device, we
	 * cannot disable the DMAR, due to possibility of other
	 * devices on the same DMAR still requiring translation.
	 * Instead provide the identity mapping for the device
	 * context.
	 */
	disabled = FUNC2(FUNC7(requester), 
	    FUNC6(requester), FUNC9(requester), 
	    FUNC8(requester));
	ctx = FUNC4(dmar, requester, rid, disabled, rmrr);
	if (ctx == NULL)
		return (NULL);
	if (disabled) {
		/*
		 * Keep the first reference on context, release the
		 * later refs.
		 */
		FUNC0(dmar);
		if ((ctx->flags & DMAR_CTX_DISABLED) == 0) {
			ctx->flags |= DMAR_CTX_DISABLED;
			FUNC1(dmar);
		} else {
			FUNC3(dmar, ctx);
		}
		ctx = NULL;
	}
	return (ctx);
}