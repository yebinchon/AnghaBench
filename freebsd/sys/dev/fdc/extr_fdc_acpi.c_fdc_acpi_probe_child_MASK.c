#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct fdc_walk_ctx {int index; scalar_t__* fd_present; int /*<<< orphan*/  dev; int /*<<< orphan*/  acpi_dev; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_10__ {int /*<<< orphan*/ * Pointer; int /*<<< orphan*/  Length; } ;
struct TYPE_8__ {int /*<<< orphan*/  Value; } ;
struct TYPE_7__ {TYPE_3__* Elements; } ;
struct TYPE_9__ {scalar_t__ Type; TYPE_2__ Integer; TYPE_1__ Package; } ;
typedef  scalar_t__ ACPI_STATUS ;
typedef  TYPE_3__ ACPI_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_4__ ACPI_BUFFER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ACPI_FDC_BUFLEN ; 
 scalar_t__ ACPI_FD_PRESENT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 scalar_t__ AE_NOT_FOUND ; 
 scalar_t__ AE_OK ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ACPI_STATUS
FUNC8(ACPI_HANDLE h, device_t *dev, int level, void *arg)
{
	struct fdc_walk_ctx *ctx;
	device_t child, old_child;
	ACPI_BUFFER buf;
	ACPI_OBJECT *pkg, *obj;
	ACPI_STATUS status;

	ctx = (struct fdc_walk_ctx *)arg;
	buf.Pointer = NULL;

	/*
	 * The first four ints are booleans that indicate whether fd0-3 are
	 * present or not.  The last is for a tape device, which we don't
	 * bother supporting for now.
	 */
	if (ctx->index > 3)
		return (AE_OK);

	/* This device is not present, move on to the next. */
	if (ctx->fd_present[ctx->index] != ACPI_FD_PRESENT)
		goto out;

	/* Create a device for the child with the given index. */
	child = FUNC4(ctx->dev, "fd", ctx->index);
	if (child == NULL)
		goto out;
	old_child = *dev;
	*dev = child;

	/* Get temporary buffer for _FDI probe. */
	buf.Length = ACPI_FDC_BUFLEN;
	buf.Pointer = FUNC7(buf.Length, M_TEMP, M_NOWAIT | M_ZERO);
	if (buf.Pointer == NULL)
		goto out;

	/*
	 * Evaluate _FDI to get drive type to pass to the child.  We use the
	 * old child here since it has a valid ACPI_HANDLE since it is a
	 * child of acpi.  A better way to implement this would be to make fdc
	 * support the ACPI handle ivar for its children.
	 */
	status = FUNC0(ctx->acpi_dev, old_child, "_FDI", NULL,
	    &buf);
	if (FUNC1(status)) {
		if (status != AE_NOT_FOUND)
			FUNC3(ctx->dev, "_FDI failed - %#x\n", status);
		goto out;
	}
	pkg = (ACPI_OBJECT *)buf.Pointer;
	if (!FUNC2(pkg, 16)) {
		FUNC3(ctx->dev, "invalid _FDI package\n");
		goto out;
	}
	obj = &pkg->Package.Elements[1];
	if (obj == NULL || obj->Type != ACPI_TYPE_INTEGER) {
		FUNC3(ctx->dev, "invalid type object in _FDI\n");
		goto out;
	}
	FUNC5(child, obj->Integer.Value);

out:
	ctx->index++;
	if (buf.Pointer)
		FUNC6(buf.Pointer, M_TEMP);
	return (AE_OK);
}