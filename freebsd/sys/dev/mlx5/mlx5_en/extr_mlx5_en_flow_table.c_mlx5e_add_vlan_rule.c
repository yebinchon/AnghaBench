
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlx5e_priv {int ifp; } ;
typedef enum mlx5e_vlan_rule_type { ____Placeholder_mlx5e_vlan_rule_type } mlx5e_vlan_rule_type ;


 int ENOMEM ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int fte_match_param ;
 int kvfree (int *) ;
 int mlx5_en_err (int ,char*) ;
 int * mlx5_vzalloc (int ) ;
 int mlx5e_add_vlan_rule_sub (struct mlx5e_priv*,int,int ,int *,int *) ;

__attribute__((used)) static int
mlx5e_add_vlan_rule(struct mlx5e_priv *priv,
    enum mlx5e_vlan_rule_type rule_type, u16 vid)
{
 u32 *match_criteria;
 u32 *match_value;
 int err = 0;

 match_value = mlx5_vzalloc(MLX5_ST_SZ_BYTES(fte_match_param));
 match_criteria = mlx5_vzalloc(MLX5_ST_SZ_BYTES(fte_match_param));
 if (!match_value || !match_criteria) {
  mlx5_en_err(priv->ifp, "alloc failed\n");
  err = -ENOMEM;
  goto add_vlan_rule_out;
 }

 err = mlx5e_add_vlan_rule_sub(priv, rule_type, vid, match_criteria,
        match_value);

add_vlan_rule_out:
 kvfree(match_criteria);
 kvfree(match_value);

 return (err);
}
