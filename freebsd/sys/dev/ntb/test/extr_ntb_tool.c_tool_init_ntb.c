
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tool_ctx {int dev; } ;


 int ntb_set_ctx (int ,struct tool_ctx*,int *) ;
 int tool_ops ;

__attribute__((used)) static int
tool_init_ntb(struct tool_ctx *tc)
{

 return ntb_set_ctx(tc->dev, tc, &tool_ops);
}
