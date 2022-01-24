#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  TYPE_1__* u16 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  counter_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  counter_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (TYPE_2__*,void*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_CORE_GENERAL_DIAGNOSTICS_NUM ; 
 int /*<<< orphan*/  MLX5_CORE_PCI_DIAGNOSTICS_NUM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,...) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  debug ; 
 TYPE_2__* diagnostic_counter ; 
 int /*<<< orphan*/  diagnostic_params_context ; 
 int /*<<< orphan*/  diagnostic_params_ctx ; 
 int /*<<< orphan*/  enable ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  mlx5_core_general_diagnostics_table ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  mlx5_core_pci_diagnostics_table ; 
 int FUNC7 (struct mlx5_core_dev*,void*,int) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  num_of_counters ; 
 int /*<<< orphan*/  num_of_diagnostic_counters ; 
 int /*<<< orphan*/  on_demand ; 
 TYPE_2__* set_diagnostic_params_in ; 
 int /*<<< orphan*/  single ; 

int FUNC9(struct mlx5_core_dev *dev,
				   u8 enable_pci, u8 enable_general)
{
	void *diag_params_ctx;
	void *in;
	int numcounters;
	int inlen;
	int err;
	int x;
	int y;

	if (FUNC2(dev, debug) == 0)
		return 0;

	numcounters = FUNC2(dev, num_of_diagnostic_counters);
	if (numcounters == 0)
		return 0;

	inlen = FUNC4(set_diagnostic_params_in) +
	    FUNC4(diagnostic_counter) * numcounters;
	in = FUNC8(inlen);
	if (in == NULL)
		return -ENOMEM;

	diag_params_ctx = FUNC0(set_diagnostic_params_in, in,
				       diagnostic_params_ctx);

	FUNC3(diagnostic_params_context, diag_params_ctx,
		 enable, enable_pci || enable_general);
	FUNC3(diagnostic_params_context, diag_params_ctx,
		 single, 1);
	FUNC3(diagnostic_params_context, diag_params_ctx,
		 on_demand, 1);

	/* collect the counters we want to enable */
	for (x = y = 0; x != numcounters; x++) {
		u16 counter_id =
			FUNC1(dev, diagnostic_counter[x].counter_id);
		int index = -1;

		if (index < 0 && enable_pci != 0) {
			/* check if counter ID exists in local table */
			index = FUNC6(
			    mlx5_core_pci_diagnostics_table,
			    MLX5_CORE_PCI_DIAGNOSTICS_NUM,
			    counter_id);
		}
		if (index < 0 && enable_general != 0) {
			/* check if counter ID exists in local table */
			index = FUNC6(
			    mlx5_core_general_diagnostics_table,
			    MLX5_CORE_GENERAL_DIAGNOSTICS_NUM,
			    counter_id);
		}
		if (index < 0)
			continue;

		FUNC3(diagnostic_params_context,
			 diag_params_ctx,
			 counter_id[y].counter_id,
			 counter_id);
		y++;
	}

	/* recompute input length */
	inlen = FUNC4(set_diagnostic_params_in) +
	    FUNC4(diagnostic_counter) * y;

	/* set number of counters */
	FUNC3(diagnostic_params_context, diag_params_ctx,
		 num_of_counters, y);

	/* execute firmware command */
	err = FUNC7(dev, in, inlen);

	FUNC5(in);

	return err;
}