
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {struct mlx5_flow_table* t; } ;
struct TYPE_5__ {TYPE_1__ main; } ;
struct mlx5e_priv {int* tirn; TYPE_2__ fts; } ;
struct mlx5e_eth_addr_info {int tt_vec; struct mlx5_flow_rule** ft_rule; int addr; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_rule {int dummy; } ;
struct mlx5_flow_destination {int tir_num; int type; } ;
struct TYPE_6__ {int ethertype; int ip_protocol; int dmac_47_16; } ;


 int BIT (size_t) ;
 int ETHERTYPE_IP ;
 int ETHERTYPE_IPV6 ;
 int ETH_ALEN ;
 int IPPROTO_AH ;
 int IPPROTO_ESP ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 scalar_t__ IS_ERR_OR_NULL (struct mlx5_flow_rule*) ;



 size_t MLX5E_TT_ANY ;
 size_t MLX5E_TT_IPV4 ;
 size_t MLX5E_TT_IPV4_IPSEC_AH ;
 size_t MLX5E_TT_IPV4_IPSEC_ESP ;
 size_t MLX5E_TT_IPV4_TCP ;
 size_t MLX5E_TT_IPV4_UDP ;
 size_t MLX5E_TT_IPV6 ;
 size_t MLX5E_TT_IPV6_IPSEC_AH ;
 size_t MLX5E_TT_IPV6_IPSEC_ESP ;
 size_t MLX5E_TT_IPV6_TCP ;
 size_t MLX5E_TT_IPV6_UDP ;
 int* MLX5_ADDR_OF (int ,int*,int ) ;
 int MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ;
 int MLX5_FLOW_DESTINATION_TYPE_TIR ;
 int MLX5_FS_ETH_FLOW_TAG ;
 int MLX5_MATCH_OUTER_HEADERS ;
 int MLX5_SET (int ,int*,int ,int ) ;
 int MLX5_SET_TO_ONES (int ,int*,int ) ;
 int PTR_ERR (struct mlx5_flow_rule*) ;
 int ether_addr_copy (int*,int ) ;
 int fte_match_param ;
 int memset (int*,int,int ) ;
 struct mlx5_flow_rule* mlx5_add_flow_rule (struct mlx5_flow_table*,int,int*,int*,int ,int ,struct mlx5_flow_destination*) ;
 int mlx5e_del_eth_addr_from_flow_table (struct mlx5e_priv*,struct mlx5e_eth_addr_info*) ;
 int mlx5e_get_tt_vec (struct mlx5e_eth_addr_info*,int) ;
 TYPE_3__ outer_headers ;

__attribute__((used)) static int
mlx5e_add_eth_addr_rule_sub(struct mlx5e_priv *priv,
    struct mlx5e_eth_addr_info *ai, int type,
    u32 *mc, u32 *mv)
{
 struct mlx5_flow_destination dest = {};
 u8 mc_enable = 0;
 struct mlx5_flow_rule **rule_p;
 struct mlx5_flow_table *ft = priv->fts.main.t;
 u8 *mc_dmac = MLX5_ADDR_OF(fte_match_param, mc,
       outer_headers.dmac_47_16);
 u8 *mv_dmac = MLX5_ADDR_OF(fte_match_param, mv,
       outer_headers.dmac_47_16);
 u32 *tirn = priv->tirn;
 u32 tt_vec;
 int err = 0;

 dest.type = MLX5_FLOW_DESTINATION_TYPE_TIR;

 switch (type) {
 case 129:
  mc_enable = MLX5_MATCH_OUTER_HEADERS;
  memset(mc_dmac, 0xff, ETH_ALEN);
  ether_addr_copy(mv_dmac, ai->addr);
  break;

 case 130:
  mc_enable = MLX5_MATCH_OUTER_HEADERS;
  mc_dmac[0] = 0x01;
  mv_dmac[0] = 0x01;
  break;

 case 128:
  break;
 default:
  break;
 }

 tt_vec = mlx5e_get_tt_vec(ai, type);

 if (tt_vec & BIT(MLX5E_TT_ANY)) {
  rule_p = &ai->ft_rule[MLX5E_TT_ANY];
  dest.tir_num = tirn[MLX5E_TT_ANY];
  *rule_p = mlx5_add_flow_rule(ft, mc_enable, mc, mv,
          MLX5_FLOW_CONTEXT_ACTION_FWD_DEST,
          MLX5_FS_ETH_FLOW_TAG, &dest);
  if (IS_ERR_OR_NULL(*rule_p))
   goto err_del_ai;
  ai->tt_vec |= BIT(MLX5E_TT_ANY);
 }

 mc_enable = MLX5_MATCH_OUTER_HEADERS;
 MLX5_SET_TO_ONES(fte_match_param, mc, outer_headers.ethertype);

 if (tt_vec & BIT(MLX5E_TT_IPV4)) {
  rule_p = &ai->ft_rule[MLX5E_TT_IPV4];
  dest.tir_num = tirn[MLX5E_TT_IPV4];
  MLX5_SET(fte_match_param, mv, outer_headers.ethertype,
    ETHERTYPE_IP);
  *rule_p = mlx5_add_flow_rule(ft, mc_enable, mc, mv,
          MLX5_FLOW_CONTEXT_ACTION_FWD_DEST,
          MLX5_FS_ETH_FLOW_TAG, &dest);
  if (IS_ERR_OR_NULL(*rule_p))
   goto err_del_ai;
  ai->tt_vec |= BIT(MLX5E_TT_IPV4);
 }

 if (tt_vec & BIT(MLX5E_TT_IPV6)) {
  rule_p = &ai->ft_rule[MLX5E_TT_IPV6];
  dest.tir_num = tirn[MLX5E_TT_IPV6];
  MLX5_SET(fte_match_param, mv, outer_headers.ethertype,
    ETHERTYPE_IPV6);
  *rule_p = mlx5_add_flow_rule(ft, mc_enable, mc, mv,
          MLX5_FLOW_CONTEXT_ACTION_FWD_DEST,
          MLX5_FS_ETH_FLOW_TAG, &dest);
  if (IS_ERR_OR_NULL(*rule_p))
   goto err_del_ai;
  ai->tt_vec |= BIT(MLX5E_TT_IPV6);
 }

 MLX5_SET_TO_ONES(fte_match_param, mc, outer_headers.ip_protocol);
 MLX5_SET(fte_match_param, mv, outer_headers.ip_protocol, IPPROTO_UDP);

 if (tt_vec & BIT(MLX5E_TT_IPV4_UDP)) {
  rule_p = &ai->ft_rule[MLX5E_TT_IPV4_UDP];
  dest.tir_num = tirn[MLX5E_TT_IPV4_UDP];
  MLX5_SET(fte_match_param, mv, outer_headers.ethertype,
    ETHERTYPE_IP);
  *rule_p = mlx5_add_flow_rule(ft, mc_enable, mc, mv,
          MLX5_FLOW_CONTEXT_ACTION_FWD_DEST,
          MLX5_FS_ETH_FLOW_TAG, &dest);
  if (IS_ERR_OR_NULL(*rule_p))
   goto err_del_ai;
  ai->tt_vec |= BIT(MLX5E_TT_IPV4_UDP);
 }

 if (tt_vec & BIT(MLX5E_TT_IPV6_UDP)) {
  rule_p = &ai->ft_rule[MLX5E_TT_IPV6_UDP];
  dest.tir_num = tirn[MLX5E_TT_IPV6_UDP];
  MLX5_SET(fte_match_param, mv, outer_headers.ethertype,
    ETHERTYPE_IPV6);
  *rule_p = mlx5_add_flow_rule(ft, mc_enable, mc, mv,
          MLX5_FLOW_CONTEXT_ACTION_FWD_DEST,
          MLX5_FS_ETH_FLOW_TAG, &dest);
  if (IS_ERR_OR_NULL(*rule_p))
   goto err_del_ai;
  ai->tt_vec |= BIT(MLX5E_TT_IPV6_UDP);
 }

 MLX5_SET(fte_match_param, mv, outer_headers.ip_protocol, IPPROTO_TCP);

 if (tt_vec & BIT(MLX5E_TT_IPV4_TCP)) {
  rule_p = &ai->ft_rule[MLX5E_TT_IPV4_TCP];
  dest.tir_num = tirn[MLX5E_TT_IPV4_TCP];
  MLX5_SET(fte_match_param, mv, outer_headers.ethertype,
    ETHERTYPE_IP);
  *rule_p = mlx5_add_flow_rule(ft, mc_enable, mc, mv,
          MLX5_FLOW_CONTEXT_ACTION_FWD_DEST,
          MLX5_FS_ETH_FLOW_TAG, &dest);
  if (IS_ERR_OR_NULL(*rule_p))
   goto err_del_ai;
  ai->tt_vec |= BIT(MLX5E_TT_IPV4_TCP);
 }

 if (tt_vec & BIT(MLX5E_TT_IPV6_TCP)) {
  rule_p = &ai->ft_rule[MLX5E_TT_IPV6_TCP];
  dest.tir_num = tirn[MLX5E_TT_IPV6_TCP];
  MLX5_SET(fte_match_param, mv, outer_headers.ethertype,
    ETHERTYPE_IPV6);
  *rule_p = mlx5_add_flow_rule(ft, mc_enable, mc, mv,
          MLX5_FLOW_CONTEXT_ACTION_FWD_DEST,
          MLX5_FS_ETH_FLOW_TAG, &dest);
  if (IS_ERR_OR_NULL(*rule_p))
   goto err_del_ai;

  ai->tt_vec |= BIT(MLX5E_TT_IPV6_TCP);
 }

 MLX5_SET(fte_match_param, mv, outer_headers.ip_protocol, IPPROTO_AH);

 if (tt_vec & BIT(MLX5E_TT_IPV4_IPSEC_AH)) {
  rule_p = &ai->ft_rule[MLX5E_TT_IPV4_IPSEC_AH];
  dest.tir_num = tirn[MLX5E_TT_IPV4_IPSEC_AH];
  MLX5_SET(fte_match_param, mv, outer_headers.ethertype,
    ETHERTYPE_IP);
  *rule_p = mlx5_add_flow_rule(ft, mc_enable, mc, mv,
          MLX5_FLOW_CONTEXT_ACTION_FWD_DEST,
          MLX5_FS_ETH_FLOW_TAG, &dest);
  if (IS_ERR_OR_NULL(*rule_p))
   goto err_del_ai;
  ai->tt_vec |= BIT(MLX5E_TT_IPV4_IPSEC_AH);
 }

 if (tt_vec & BIT(MLX5E_TT_IPV6_IPSEC_AH)) {
  rule_p = &ai->ft_rule[MLX5E_TT_IPV6_IPSEC_AH];
  dest.tir_num = tirn[MLX5E_TT_IPV6_IPSEC_AH];
  MLX5_SET(fte_match_param, mv, outer_headers.ethertype,
    ETHERTYPE_IPV6);
  *rule_p = mlx5_add_flow_rule(ft, mc_enable, mc, mv,
          MLX5_FLOW_CONTEXT_ACTION_FWD_DEST,
          MLX5_FS_ETH_FLOW_TAG, &dest);
  if (IS_ERR_OR_NULL(*rule_p))
   goto err_del_ai;
  ai->tt_vec |= BIT(MLX5E_TT_IPV6_IPSEC_AH);
 }

 MLX5_SET(fte_match_param, mv, outer_headers.ip_protocol, IPPROTO_ESP);

 if (tt_vec & BIT(MLX5E_TT_IPV4_IPSEC_ESP)) {
  rule_p = &ai->ft_rule[MLX5E_TT_IPV4_IPSEC_ESP];
  dest.tir_num = tirn[MLX5E_TT_IPV4_IPSEC_ESP];
  MLX5_SET(fte_match_param, mv, outer_headers.ethertype,
    ETHERTYPE_IP);
  *rule_p = mlx5_add_flow_rule(ft, mc_enable, mc, mv,
          MLX5_FLOW_CONTEXT_ACTION_FWD_DEST,
          MLX5_FS_ETH_FLOW_TAG, &dest);
  if (IS_ERR_OR_NULL(*rule_p))
   goto err_del_ai;
  ai->tt_vec |= BIT(MLX5E_TT_IPV4_IPSEC_ESP);
 }

 if (tt_vec & BIT(MLX5E_TT_IPV6_IPSEC_ESP)) {
  rule_p = &ai->ft_rule[MLX5E_TT_IPV6_IPSEC_ESP];
  dest.tir_num = tirn[MLX5E_TT_IPV6_IPSEC_ESP];
  MLX5_SET(fte_match_param, mv, outer_headers.ethertype,
    ETHERTYPE_IPV6);
  *rule_p = mlx5_add_flow_rule(ft, mc_enable, mc, mv,
          MLX5_FLOW_CONTEXT_ACTION_FWD_DEST,
          MLX5_FS_ETH_FLOW_TAG, &dest);
  if (IS_ERR_OR_NULL(*rule_p))
   goto err_del_ai;
  ai->tt_vec |= BIT(MLX5E_TT_IPV6_IPSEC_ESP);
 }

 return 0;

err_del_ai:
 err = PTR_ERR(*rule_p);
 *rule_p = ((void*)0);
 mlx5e_del_eth_addr_from_flow_table(priv, ai);

 return err;
}
