
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cmd {int alloc_lock; int bitmask; int * ent_mode; int ** ent_arr; } ;


 int MLX5_CMD_MODE_POLLING ;
 int set_bit (int,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void free_ent(struct mlx5_cmd *cmd, int idx)
{
 unsigned long flags;

 spin_lock_irqsave(&cmd->alloc_lock, flags);
 cmd->ent_arr[idx] = ((void*)0);
 cmd->ent_mode[idx] = MLX5_CMD_MODE_POLLING;
 set_bit(idx, &cmd->bitmask);
 spin_unlock_irqrestore(&cmd->alloc_lock, flags);
}
