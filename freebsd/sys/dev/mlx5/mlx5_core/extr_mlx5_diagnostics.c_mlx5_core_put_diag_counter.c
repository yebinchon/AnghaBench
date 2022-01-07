
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u16 ;
struct mlx5_core_diagnostics_entry {scalar_t__ counter_id; } ;



__attribute__((used)) static void mlx5_core_put_diag_counter(
 const struct mlx5_core_diagnostics_entry *entry,
 u64 *array, int size, u16 counter_id, u64 value)
{
 int x;


 if (counter_id == 0)
  return;


 for (x = 0; x != size; x++) {
  if (entry[x].counter_id == counter_id) {
   array[x] = value;
   break;
  }
 }
}
