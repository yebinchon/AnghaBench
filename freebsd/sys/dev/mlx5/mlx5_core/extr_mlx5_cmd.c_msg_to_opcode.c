
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int data; } ;
struct mlx5_cmd_msg {TYPE_1__ first; } ;


 int MLX5_GET (int ,int ,int ) ;
 int mbox_in ;
 int opcode ;

__attribute__((used)) static u16 msg_to_opcode(struct mlx5_cmd_msg *in)
{
 return MLX5_GET(mbox_in, in->first.data, opcode);
}
