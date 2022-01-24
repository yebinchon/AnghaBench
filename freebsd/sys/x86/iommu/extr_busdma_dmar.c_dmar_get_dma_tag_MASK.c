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
struct dmar_unit {int /*<<< orphan*/  dma_enabled; } ;
struct dmar_ctx {int /*<<< orphan*/  ctx_tag; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/ * bus_dma_tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  bootverbose ; 
 struct dmar_unit* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dmar_ctx* FUNC1 (struct dmar_unit*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_unit*) ; 

bus_dma_tag_t
FUNC4(device_t dev, device_t child)
{
	struct dmar_unit *dmar;
	struct dmar_ctx *ctx;
	bus_dma_tag_t res;

	dmar = FUNC0(child, bootverbose);
	/* Not in scope of any DMAR ? */
	if (dmar == NULL)
		return (NULL);
	if (!dmar->dma_enabled)
		return (NULL);
	FUNC3(dmar);
	FUNC2(dmar);

	ctx = FUNC1(dmar, child, false);
	res = ctx == NULL ? NULL : (bus_dma_tag_t)&ctx->ctx_tag;
	return (res);
}