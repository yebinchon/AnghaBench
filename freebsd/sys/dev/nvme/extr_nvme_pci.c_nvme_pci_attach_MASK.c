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
struct nvme_controller {scalar_t__ msix_enabled; int /*<<< orphan*/ * res; scalar_t__ tag; int /*<<< orphan*/ * bar4_resource; int /*<<< orphan*/  bar4_resource_id; int /*<<< orphan*/ * resource; int /*<<< orphan*/  resource_id; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct nvme_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct nvme_controller*ctrlr = FUNC0(dev);
	int status;

	ctrlr->dev = dev;
	status = FUNC4(ctrlr);
	if (status != 0)
		goto bad;
	FUNC6(dev);
	FUNC5(ctrlr);
	return FUNC3(dev);
bad:
	if (ctrlr->resource != NULL) {
		FUNC1(dev, SYS_RES_MEMORY,
		    ctrlr->resource_id, ctrlr->resource);
	}

	if (ctrlr->bar4_resource != NULL) {
		FUNC1(dev, SYS_RES_MEMORY,
		    ctrlr->bar4_resource_id, ctrlr->bar4_resource);
	}

	if (ctrlr->tag)
		FUNC2(dev, ctrlr->res, ctrlr->tag);

	if (ctrlr->res)
		FUNC1(dev, SYS_RES_IRQ,
		    FUNC8(ctrlr->res), ctrlr->res);

	if (ctrlr->msix_enabled)
		FUNC7(dev);

	return status;
}