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
struct ppc_data {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ppc_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ppc_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ppc_data*) ; 

int
FUNC3(device_t dev)
{
	struct ppc_data *ppc = FUNC0(dev);

	FUNC1(ppc);
	FUNC2(ppc);

	return 0;
}