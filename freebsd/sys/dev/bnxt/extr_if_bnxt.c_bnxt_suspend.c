
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int if_ctx_t ;


 int bnxt_wol_config (int ) ;

__attribute__((used)) static int
bnxt_suspend(if_ctx_t ctx)
{
 bnxt_wol_config(ctx);
 return 0;
}
