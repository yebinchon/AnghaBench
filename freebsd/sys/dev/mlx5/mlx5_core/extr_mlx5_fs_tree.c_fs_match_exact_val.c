
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_fs_mask {int match_criteria_enable; void* match_criteria; } ;


 void* MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_INNER_HEADERS ;
 int MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_MISC_PARAMETERS ;
 int MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int _fs_match_exact_val (void*,void*,void*,int ) ;
 int fte_match_param ;
 int fte_match_set_lyr_2_4 ;
 int fte_match_set_misc ;
 int inner_headers ;
 int misc_parameters ;
 int outer_headers ;

bool fs_match_exact_val(struct mlx5_core_fs_mask *mask,
          void *val1, void *val2)
{
 if (mask->match_criteria_enable &
     1 << MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS) {
  void *fte_match1 = MLX5_ADDR_OF(fte_match_param,
      val1, outer_headers);
  void *fte_match2 = MLX5_ADDR_OF(fte_match_param,
      val2, outer_headers);
  void *fte_mask = MLX5_ADDR_OF(fte_match_param,
           mask->match_criteria, outer_headers);

  if (!_fs_match_exact_val(fte_mask, fte_match1, fte_match2,
      MLX5_ST_SZ_BYTES(fte_match_set_lyr_2_4)))
   return 0;
 }

 if (mask->match_criteria_enable &
     1 << MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_MISC_PARAMETERS) {
  void *fte_match1 = MLX5_ADDR_OF(fte_match_param,
      val1, misc_parameters);
  void *fte_match2 = MLX5_ADDR_OF(fte_match_param,
      val2, misc_parameters);
  void *fte_mask = MLX5_ADDR_OF(fte_match_param,
       mask->match_criteria, misc_parameters);

  if (!_fs_match_exact_val(fte_mask, fte_match1, fte_match2,
      MLX5_ST_SZ_BYTES(fte_match_set_misc)))
   return 0;
 }
 if (mask->match_criteria_enable &
     1 << MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_INNER_HEADERS) {
  void *fte_match1 = MLX5_ADDR_OF(fte_match_param,
      val1, inner_headers);
  void *fte_match2 = MLX5_ADDR_OF(fte_match_param,
      val2, inner_headers);
  void *fte_mask = MLX5_ADDR_OF(fte_match_param,
       mask->match_criteria, inner_headers);

  if (!_fs_match_exact_val(fte_mask, fte_match1, fte_match2,
      MLX5_ST_SZ_BYTES(fte_match_set_lyr_2_4)))
   return 0;
 }
 return 1;
}
