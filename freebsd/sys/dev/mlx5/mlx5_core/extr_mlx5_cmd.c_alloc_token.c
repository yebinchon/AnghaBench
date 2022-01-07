
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlx5_cmd {scalar_t__ token; int token_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static u8 alloc_token(struct mlx5_cmd *cmd)
{
 u8 token;

 spin_lock(&cmd->token_lock);
 cmd->token++;
 if (cmd->token == 0)
  cmd->token++;
 token = cmd->token;
 spin_unlock(&cmd->token_lock);

 return token;
}
