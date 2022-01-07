
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int if_ctx_t ;


 int if_getflags (int ) ;
 int iflib_get_ifp (int ) ;
 int iflib_get_softc (int ) ;
 int vmxnet3_set_rxfilter (int ,int ) ;

__attribute__((used)) static void
vmxnet3_multi_set(if_ctx_t ctx)
{

 vmxnet3_set_rxfilter(iflib_get_softc(ctx),
     if_getflags(iflib_get_ifp(ctx)));
}
