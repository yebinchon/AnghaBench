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
struct ena_com_dev {int dummy; } ;
struct ena_adapter {int /*<<< orphan*/  pdev; struct ena_com_dev* ena_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_com_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_adapter*) ; 
 int FUNC4 (struct ena_adapter*) ; 
 int FUNC5 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ena_adapter*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct ena_adapter *adapter,
    int io_vectors)
{
	struct ena_com_dev *ena_dev = adapter->ena_dev;
	int rc;

	rc = FUNC4(adapter);
	if (FUNC7(rc != 0)) {
		FUNC0(adapter->pdev, "Error with MSI-X enablement\n");
		return (rc);
	}

	FUNC6(adapter);

	rc = FUNC5(adapter);
	if (FUNC7(rc != 0)) {
		FUNC0(adapter->pdev, "Cannot setup mgmnt queue intr\n");
		goto err_disable_msix;
	}

	FUNC2(ena_dev, false);

	FUNC1(ena_dev);

	return (0);

err_disable_msix:
	FUNC3(adapter);

	return (rc);
}