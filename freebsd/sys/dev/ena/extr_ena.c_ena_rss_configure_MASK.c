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
struct ena_adapter {struct ena_com_dev* ena_dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct ena_com_dev*) ; 
 int FUNC1 (struct ena_com_dev*) ; 
 int FUNC2 (struct ena_com_dev*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct ena_adapter *adapter)
{
	struct ena_com_dev *ena_dev = adapter->ena_dev;
	int rc;

	/* Set indirect table */
	rc = FUNC0(ena_dev);
	if (FUNC3((rc != 0) && (rc != EOPNOTSUPP)))
		return (rc);

	/* Configure hash function (if supported) */
	rc = FUNC2(ena_dev);
	if (FUNC3((rc != 0) && (rc != EOPNOTSUPP)))
		return (rc);

	/* Configure hash inputs (if supported) */
	rc = FUNC1(ena_dev);
	if (FUNC3((rc != 0) && (rc != EOPNOTSUPP)))
		return (rc);

	return (0);
}