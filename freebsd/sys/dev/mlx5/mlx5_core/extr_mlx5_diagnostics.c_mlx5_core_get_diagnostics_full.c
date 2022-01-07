
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* tx_pci_fatal_errors; void* tx_pci_non_fatal_errors; void* tx_pci_errors; void* rx_pci_errors; } ;
union mlx5_core_pci_diagnostics {TYPE_1__ counter; int array; } ;
union mlx5_core_general_diagnostics {int array; } ;
typedef int u64 ;
typedef void* u16 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_6__ {int pcie_timers_states; int pcie_perf_counters; } ;
struct TYPE_5__ {int counter_value_h; int counter_id; } ;


 int ENOMEM ;
 void* MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_CORE_GENERAL_DIAGNOSTICS_NUM ;
 int MLX5_CORE_PCI_DIAGNOSTICS_NUM ;
 void* MLX5_GET (int ,void*,int ) ;
 int MLX5_GET64 (int ,void*,int ) ;
 int MLX5_PCIE_PERFORMANCE_COUNTERS_GROUP ;
 int MLX5_PCIE_TIMERS_AND_STATES_COUNTERS_GROUP ;
 int MLX5_REG_MPCNT ;
 int MLX5_SET (int ,void*,int ,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 TYPE_3__ counter_set ;
 int debug ;
 TYPE_2__* diag_counter ;
 int diagnostic_counter ;
 int fatal_err_msg_sent ;
 int grp ;
 int kvfree (void*) ;
 int mlx5_core_access_reg (struct mlx5_core_dev*,void*,int,void*,int,int ,int ,int ) ;
 int mlx5_core_general_diagnostics_table ;
 int mlx5_core_pci_diagnostics_table ;
 int mlx5_core_put_diag_counter (int ,int ,int ,void*,int ) ;
 int mlx5_query_diagnostic_counters (struct mlx5_core_dev*,int,int ,void*,int) ;
 void* mlx5_vzalloc (int) ;
 int mpcnt_reg ;
 int non_fatal_err_msg_sent ;
 int num_of_diagnostic_counters ;
 int pcie_perf_counters ;
 int pcie_timers_states ;
 int query_diagnostic_counters_out ;
 int rx_errors ;
 int tx_errors ;

int mlx5_core_get_diagnostics_full(struct mlx5_core_dev *dev,
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

 if (MLX5_CAP_GEN(dev, debug) == 0)
  return 0;

 numcounters = MLX5_CAP_GEN(dev, num_of_diagnostic_counters);
 if (numcounters == 0)
  return 0;

 outlen = MLX5_ST_SZ_BYTES(query_diagnostic_counters_out) +
     MLX5_ST_SZ_BYTES(diagnostic_counter) * numcounters;

 out = mlx5_vzalloc(outlen);
 if (out == ((void*)0))
  return -ENOMEM;

 err = mlx5_query_diagnostic_counters(dev, 1, 0, out, outlen);
 if (err == 0) {
  for (x = 0; x != numcounters; x++) {
   u16 counter_id = MLX5_GET(
       query_diagnostic_counters_out,
       out, diag_counter[x].counter_id);
   u64 counter_value = MLX5_GET64(
       query_diagnostic_counters_out,
       out, diag_counter[x].counter_value_h);

   if (pdiag != ((void*)0)) {
    mlx5_core_put_diag_counter(
        mlx5_core_pci_diagnostics_table,
        pdiag->array,
        MLX5_CORE_PCI_DIAGNOSTICS_NUM,
        counter_id, counter_value);
   }
   if (pgen != ((void*)0)) {
    mlx5_core_put_diag_counter(
        mlx5_core_general_diagnostics_table,
        pgen->array,
        MLX5_CORE_GENERAL_DIAGNOSTICS_NUM,
        counter_id, counter_value);
   }
  }
 }
 kvfree(out);

 if (pdiag != ((void*)0)) {
  inlen = MLX5_ST_SZ_BYTES(mpcnt_reg);
  outlen = MLX5_ST_SZ_BYTES(mpcnt_reg);

  in = mlx5_vzalloc(inlen);
  if (in == ((void*)0))
   return -ENOMEM;

  out = mlx5_vzalloc(outlen);
  if (out == ((void*)0)) {
   kvfree(in);
   return -ENOMEM;
  }
  MLX5_SET(mpcnt_reg, in, grp,
    MLX5_PCIE_PERFORMANCE_COUNTERS_GROUP);

  err = mlx5_core_access_reg(dev, in, inlen, out, outlen,
        MLX5_REG_MPCNT, 0, 0);
  if (err == 0) {
   void *pcounters = MLX5_ADDR_OF(mpcnt_reg, out,
       counter_set.pcie_perf_counters);

   pdiag->counter.rx_pci_errors =
       MLX5_GET(pcie_perf_counters,
         pcounters, rx_errors);
   pdiag->counter.tx_pci_errors =
       MLX5_GET(pcie_perf_counters,
         pcounters, tx_errors);
  }
  MLX5_SET(mpcnt_reg, in, grp,
    MLX5_PCIE_TIMERS_AND_STATES_COUNTERS_GROUP);

  err = mlx5_core_access_reg(dev, in, inlen, out, outlen,
      MLX5_REG_MPCNT, 0, 0);
  if (err == 0) {
   void *pcounters = MLX5_ADDR_OF(mpcnt_reg, out,
       counter_set.pcie_timers_states);

   pdiag->counter.tx_pci_non_fatal_errors =
       MLX5_GET(pcie_timers_states,
         pcounters, non_fatal_err_msg_sent);
   pdiag->counter.tx_pci_fatal_errors =
       MLX5_GET(pcie_timers_states,
         pcounters, fatal_err_msg_sent);
  }
  kvfree(in);
  kvfree(out);
 }
 return 0;
}
