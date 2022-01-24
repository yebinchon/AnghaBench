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
struct dmar_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ACPI_DMAR_PCI_PATH ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int) ; 
 struct dmar_ctx* FUNC2 (struct dmar_unit*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

struct dmar_ctx *
FUNC4(struct dmar_unit *dmar, device_t dev, uint16_t rid,
    bool id_mapped, bool rmrr_init)
{
	int dev_domain, dev_path_len, dev_busno;

	dev_domain = FUNC3(dev);
	dev_path_len = FUNC0(dev);
	ACPI_DMAR_PCI_PATH dev_path[dev_path_len];
	FUNC1(dev, &dev_busno, dev_path, dev_path_len);
	return (FUNC2(dmar, dev, rid, dev_domain, dev_busno,
	    dev_path, dev_path_len, id_mapped, rmrr_init));
}