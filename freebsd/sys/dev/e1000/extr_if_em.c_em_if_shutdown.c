
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int if_ctx_t ;


 int em_if_suspend (int ) ;

__attribute__((used)) static int
em_if_shutdown(if_ctx_t ctx)
{
 return em_if_suspend(ctx);
}
