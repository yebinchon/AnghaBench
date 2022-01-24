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
struct resource {int dummy; } ;
struct lookup_irq_request {int rid; scalar_t__ found; int checkrid; scalar_t__ counter; int /*<<< orphan*/  irq; int /*<<< orphan*/ * acpi_res; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_RESOURCE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct lookup_irq_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_lookup_irq_handler ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 

ACPI_STATUS
FUNC4(device_t dev, int rid, struct resource *res,
    ACPI_RESOURCE *acpi_res)
{
    struct lookup_irq_request req;
    ACPI_STATUS status;

    req.acpi_res = acpi_res;
    req.irq = FUNC3(res);
    req.counter = 0;
    req.rid = rid;
    req.found = 0;
    req.checkrid = 1;
    status = FUNC1(FUNC2(dev), "_CRS",
	acpi_lookup_irq_handler, &req);
    if (FUNC0(status) && req.found == 0)
	status = AE_NOT_FOUND;
    return (status);
}