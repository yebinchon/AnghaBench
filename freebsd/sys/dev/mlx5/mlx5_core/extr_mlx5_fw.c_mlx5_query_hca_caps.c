
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int MLX5_CAP_ATOMIC ;
 int MLX5_CAP_DEBUG ;
 int MLX5_CAP_EOIB_OFFLOADS ;
 int MLX5_CAP_ESWITCH ;
 int MLX5_CAP_ESWITCH_FLOW_TABLE ;
 int MLX5_CAP_ETHERNET_OFFLOADS ;
 int MLX5_CAP_FLOW_TABLE ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_CAP_GENERAL ;
 int MLX5_CAP_ODP ;
 int MLX5_CAP_QOS ;
 int MLX5_CAP_ROCE ;
 int MLX5_CAP_SNAPSHOT ;
 scalar_t__ MLX5_CMD_HCA_CAP_PORT_TYPE_ETHERNET ;
 scalar_t__ MLX5_CMD_HCA_CAP_PORT_TYPE_IB ;
 int atomic ;
 int debug ;
 int eswitch_flow_table ;
 int eth_net_offloads ;
 int ipoib_enhanced_offloads ;
 int mcam_reg ;
 int mlx5_core_get_caps (struct mlx5_core_dev*,int ) ;
 int mlx5_core_query_special_contexts (struct mlx5_core_dev*) ;
 int mlx5_get_mcam_reg (struct mlx5_core_dev*) ;
 int mlx5_get_pcam_reg (struct mlx5_core_dev*) ;
 int mlx5_get_qcam_reg (struct mlx5_core_dev*) ;
 int nic_flow_table ;
 int pcam_reg ;
 int pg ;
 int port_type ;
 int qcam_reg ;
 int qos ;
 int roce ;
 int snapshot ;
 int vport_group_manager ;

int mlx5_query_hca_caps(struct mlx5_core_dev *dev)
{
 int err;

 err = mlx5_core_get_caps(dev, MLX5_CAP_GENERAL);
 if (err)
  return err;

 if (MLX5_CAP_GEN(dev, eth_net_offloads)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_ETHERNET_OFFLOADS);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, pg)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_ODP);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, atomic)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_ATOMIC);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, roce)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_ROCE);
  if (err)
   return err;
 }

 if ((MLX5_CAP_GEN(dev, port_type) ==
     MLX5_CMD_HCA_CAP_PORT_TYPE_ETHERNET &&
     MLX5_CAP_GEN(dev, nic_flow_table)) ||
     (MLX5_CAP_GEN(dev, port_type) == MLX5_CMD_HCA_CAP_PORT_TYPE_IB &&
     MLX5_CAP_GEN(dev, ipoib_enhanced_offloads))) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_FLOW_TABLE);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, eswitch_flow_table)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_ESWITCH_FLOW_TABLE);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, vport_group_manager)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_ESWITCH);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, snapshot)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_SNAPSHOT);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, ipoib_enhanced_offloads)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_EOIB_OFFLOADS);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, debug)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_DEBUG);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, qos)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_QOS);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, qcam_reg)) {
  err = mlx5_get_qcam_reg(dev);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, mcam_reg)) {
  err = mlx5_get_mcam_reg(dev);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, pcam_reg)) {
  err = mlx5_get_pcam_reg(dev);
  if (err)
   return err;
 }

 err = mlx5_core_query_special_contexts(dev);
 if (err)
  return err;

 return 0;
}
