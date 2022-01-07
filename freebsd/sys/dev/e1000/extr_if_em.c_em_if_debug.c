
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int if_ctx_t ;


 int em_dump_rs (int ) ;
 int iflib_get_softc (int ) ;

__attribute__((used)) static void
em_if_debug(if_ctx_t ctx)
{
 em_dump_rs(iflib_get_softc(ctx));
}
