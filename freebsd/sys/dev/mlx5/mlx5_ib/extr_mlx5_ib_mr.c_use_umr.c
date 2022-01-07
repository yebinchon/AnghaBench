
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLX5_MAX_UMR_SHIFT ;

__attribute__((used)) static int use_umr(int order)
{
 return order <= MLX5_MAX_UMR_SHIFT;
}
