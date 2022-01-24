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
struct fdc_walk_ctx {scalar_t__* fd_present; void* acpi_dev; void* dev; scalar_t__ index; } ;
typedef  void* device_t ;
typedef  int /*<<< orphan*/  devclass_t ;

/* Variables and functions */
 int ACPI_FDC_MAXDEVS ; 
 scalar_t__ ACPI_FD_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (void*,void*,int,int /*<<< orphan*/ ,struct fdc_walk_ctx*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (void*,scalar_t__*,int) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,char*) ; 
 int /*<<< orphan*/  fdc_acpi_probe_child ; 
 int /*<<< orphan*/ * FUNC6 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fdc_walk_ctx*,int /*<<< orphan*/ ) ; 
 struct fdc_walk_ctx* FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t bus, device_t dev, void *fde)
{
	struct fdc_walk_ctx *ctx;
	devclass_t fd_dc;
	int i;

	/* Setup the context and walk all child devices. */
	ctx = FUNC8(sizeof(struct fdc_walk_ctx), M_TEMP, M_NOWAIT);
	if (ctx == NULL) {
		FUNC5(dev, "no memory for walking children\n");
		return (ENOMEM);
	}
	FUNC1(fde, ctx->fd_present, sizeof(ctx->fd_present));
	ctx->index = 0;
	ctx->dev = dev;
	ctx->acpi_dev = bus;
	FUNC0(ctx->acpi_dev, dev, 1, fdc_acpi_probe_child,
	    ctx);

	/* Add any devices not represented by an AML Device handle/node. */
	fd_dc = FUNC3("fd");
	for (i = 0; i < ACPI_FDC_MAXDEVS; i++)
		if (ctx->fd_present[i] == ACPI_FD_PRESENT &&
		    FUNC4(fd_dc, i) == NULL) {
			if (FUNC6(dev, "fd", i) == NULL)
				FUNC5(dev, "fd add failed\n");
		}
	FUNC7(ctx, M_TEMP);

	/* Attach any children found during the probe. */
	return (FUNC2(dev));
}