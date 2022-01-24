#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* tx_pci_fatal_errors; void* tx_pci_non_fatal_errors; void* tx_pci_errors; void* rx_pci_errors; } ;
union mlx5_core_pci_diagnostics {TYPE_1__ counter; int /*<<< orphan*/  array; } ;
union mlx5_core_general_diagnostics {int /*<<< orphan*/  array; } ;
typedef  int /*<<< orphan*/  u64 ;
typedef  void* u16 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  pcie_timers_states; int /*<<< orphan*/  pcie_perf_counters; } ;
struct TYPE_5__ {int /*<<< orphan*/  counter_value_h; int /*<<< orphan*/  counter_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_CORE_GENERAL_DIAGNOSTICS_NUM ; 
 int /*<<< orphan*/  MLX5_CORE_PCI_DIAGNOSTICS_NUM ; 
 void* FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_PCIE_PERFORMANCE_COUNTERS_GROUP ; 
 int /*<<< orphan*/  MLX5_PCIE_TIMERS_AND_STATES_COUNTERS_GROUP ; 
 int /*<<< orphan*/  MLX5_REG_MPCNT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__ counter_set ; 
 int /*<<< orphan*/  debug ; 
 TYPE_2__* diag_counter ; 
 int /*<<< orphan*/  diagnostic_counter ; 
 int /*<<< orphan*/  fatal_err_msg_sent ; 
 int /*<<< orphan*/  grp ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int FUNC7 (struct mlx5_core_dev*,void*,int,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx5_core_general_diagnostics_table ; 
 int /*<<< orphan*/  mlx5_core_pci_diagnostics_table ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mlx5_core_dev*,int,int /*<<< orphan*/ ,void*,int) ; 
 void* FUNC10 (int) ; 
 int /*<<< orphan*/  mpcnt_reg ; 
 int /*<<< orphan*/  non_fatal_err_msg_sent ; 
 int /*<<< orphan*/  num_of_diagnostic_counters ; 
 int /*<<< orphan*/  pcie_perf_counters ; 
 int /*<<< orphan*/  pcie_timers_states ; 
 int /*<<< orphan*/  query_diagnostic_counters_out ; 
 int /*<<< orphan*/  rx_errors ; 
 int /*<<< orphan*/  tx_errors ; 

int FUNC11(struct mlx5_core_dev *dev,
				   union mlx5_core_pci_diagnostics *pdiag,
				   union mlx5_core_general_diagnostics *pgen)
{
	void *out;
	void *in;
	int numcounters;
	int outlen;
	int inlen;
	int err;
	int x;

	if (FUNC1(dev, debug) == 0)
		return 0;

	numcounters = FUNC1(dev, num_of_diagnostic_counters);
	if (numcounters == 0)
		return 0;

	outlen = FUNC5(query_diagnostic_counters_out) +
	    FUNC5(diagnostic_counter) * numcounters;

	out = FUNC10(outlen);
	if (out == NULL)
		return -ENOMEM;

	err = FUNC9(dev, 1, 0, out, outlen);
	if (err == 0) {
		for (x = 0; x != numcounters; x++) {
			u16 counter_id = FUNC2(
			    query_diagnostic_counters_out,
			    out, diag_counter[x].counter_id);
			u64 counter_value = FUNC3(
			    query_diagnostic_counters_out,
			    out, diag_counter[x].counter_value_h);

			if (pdiag != NULL) {
				FUNC8(
				    mlx5_core_pci_diagnostics_table,
				    pdiag->array,
				    MLX5_CORE_PCI_DIAGNOSTICS_NUM,
				    counter_id, counter_value);
			}
			if (pgen != NULL) {
				FUNC8(
				    mlx5_core_general_diagnostics_table,
				    pgen->array,
				    MLX5_CORE_GENERAL_DIAGNOSTICS_NUM,
				    counter_id, counter_value);
			}
		}
	}
	FUNC6(out);

	if (pdiag != NULL) {
		inlen = FUNC5(mpcnt_reg);
		outlen = FUNC5(mpcnt_reg);

		in = FUNC10(inlen);
		if (in == NULL)
			return -ENOMEM;

		out = FUNC10(outlen);
		if (out == NULL) {
			FUNC6(in);
			return -ENOMEM;
		}
		FUNC4(mpcnt_reg, in, grp,
			 MLX5_PCIE_PERFORMANCE_COUNTERS_GROUP);

		err = FUNC7(dev, in, inlen, out, outlen,
					   MLX5_REG_MPCNT, 0, 0);
		if (err == 0) {
			void *pcounters = FUNC0(mpcnt_reg, out,
			    counter_set.pcie_perf_counters);

			pdiag->counter.rx_pci_errors =
			    FUNC2(pcie_perf_counters,
				     pcounters, rx_errors);
			pdiag->counter.tx_pci_errors =
			    FUNC2(pcie_perf_counters,
				     pcounters, tx_errors);
		}
		FUNC4(mpcnt_reg, in, grp,
			 MLX5_PCIE_TIMERS_AND_STATES_COUNTERS_GROUP);

		err = FUNC7(dev, in, inlen, out, outlen,
		    MLX5_REG_MPCNT, 0, 0);
		if (err == 0) {
			void *pcounters = FUNC0(mpcnt_reg, out,
			    counter_set.pcie_timers_states);

			pdiag->counter.tx_pci_non_fatal_errors =
			    FUNC2(pcie_timers_states,
				     pcounters, non_fatal_err_msg_sent);
			pdiag->counter.tx_pci_fatal_errors =
			    FUNC2(pcie_timers_states,
				     pcounters, fatal_err_msg_sent);
		}
		FUNC6(in);
		FUNC6(out);
	}
	return 0;
}