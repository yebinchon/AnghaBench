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
struct nicpf {int /*<<< orphan*/  msix_table_res; int /*<<< orphan*/  dev; scalar_t__ num_vec; scalar_t__ msix_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct nicpf *nic)
{
	if (nic->msix_enabled) {
		FUNC1(nic->dev);
		nic->msix_enabled = 0;
		nic->num_vec = 0;
	}

	FUNC0(nic->dev, SYS_RES_MEMORY,
	    FUNC2(nic->msix_table_res), nic->msix_table_res);
}