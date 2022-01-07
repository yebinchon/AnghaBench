
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_cmd_prot_block {scalar_t__ next; } ;
struct mlx5_cmd_msg {size_t numpages; } ;


 size_t MLX5_CMD_MBOX_SIZE ;
 size_t MLX5_NUM_CMDS_IN_ADAPTER_PAGE ;
 int calc_block_sig (struct mlx5_cmd_prot_block*,int ,int) ;
 int mlx5_fwp_flush (struct mlx5_cmd_msg*) ;
 struct mlx5_cmd_prot_block* mlx5_fwp_get_virt (struct mlx5_cmd_msg*,size_t) ;

__attribute__((used)) static void
calc_chain_sig(struct mlx5_cmd_msg *msg, u8 token, int csum)
{
 size_t i;

 for (i = 0; i != (msg->numpages * MLX5_NUM_CMDS_IN_ADAPTER_PAGE); i++) {
  struct mlx5_cmd_prot_block *block;

  block = mlx5_fwp_get_virt(msg, i * MLX5_CMD_MBOX_SIZE);


  calc_block_sig(block, token, csum);


  if (block->next == 0)
   break;
 }


 mlx5_fwp_flush(msg);
}
