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
typedef  int /*<<< orphan*/  uint32_t ;
struct octeon_device {int /*<<< orphan*/  pcie_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct octeon_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC2(struct octeon_device *oct, uint32_t idx)
{

	return ((uint32_t)FUNC1(oct,
				FUNC0(oct->pcie_port,
							      idx)));
}