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
typedef  int uint32_t ;
struct fsl_msi_irq {int /*<<< orphan*/ * vectors; scalar_t__ reg; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ ccsrbar_va ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(void *priv)
{
	struct fsl_msi_irq *data = priv;
	uint32_t reg;
	int i;

	reg = FUNC0(ccsrbar_va + data->reg);
	i = 0;
	while (reg != 0) {
		if (reg & 1)
			FUNC1(data->vectors[i], NULL);
		reg >>= 1;
		i++;
	}

	return (FILTER_HANDLED);
}