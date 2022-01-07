
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MLX5_CMD_OP_MANAGE_PAGES ;
 scalar_t__ MLX5_GET (int ,void*,int ) ;
 int mbox_in ;
 int opcode ;

__attribute__((used)) static int is_manage_pages(void *in)
{
 return MLX5_GET(mbox_in, in, opcode) == MLX5_CMD_OP_MANAGE_PAGES;
}
