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
struct ena_adapter {int /*<<< orphan*/ * tx_buf_tag; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(struct ena_adapter *adapter)
{
	int ret;

	ret = FUNC0(adapter->tx_buf_tag);

	if (FUNC1(ret == 0))
		adapter->tx_buf_tag = NULL;

	return (ret);
}