
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int if_ctx_t ;


 int iflib_init_locked (int ) ;
 int iflib_stop (int ) ;

__attribute__((used)) static void
iflib_if_init_locked(if_ctx_t ctx)
{
 iflib_stop(ctx);
 iflib_init_locked(ctx);
}
