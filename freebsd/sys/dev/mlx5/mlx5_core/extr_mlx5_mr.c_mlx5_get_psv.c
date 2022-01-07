
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MLX5_GET (int ,int *,int ) ;
 int create_psv_out ;
 int psv0_index ;
 int psv1_index ;
 int psv2_index ;
 int psv3_index ;

__attribute__((used)) static inline u32 mlx5_get_psv(u32 *out, int psv_index)
{
 switch (psv_index) {
 case 1: return MLX5_GET(create_psv_out, out, psv1_index);
 case 2: return MLX5_GET(create_psv_out, out, psv2_index);
 case 3: return MLX5_GET(create_psv_out, out, psv3_index);
 default: return MLX5_GET(create_psv_out, out, psv0_index);
 }
}
