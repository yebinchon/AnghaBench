
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlx5_core_diagnostics_entry {scalar_t__ counter_id; } ;



__attribute__((used)) static int mlx5_core_get_index_of_diag_counter(
 const struct mlx5_core_diagnostics_entry *entry,
 int size, u16 counter_id)
{
 int x;


 if (counter_id == 0)
  return -1;


 for (x = 0; x != size; x++) {
  if (entry[x].counter_id == counter_id)
   return x;
 }
 return -1;
}
