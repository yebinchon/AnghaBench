
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int if_ctx_t ;


 int iflib_get_softc (int ) ;
 int vmxnet3_set_rxfilter (int ,int) ;

__attribute__((used)) static int
vmxnet3_promisc_set(if_ctx_t ctx, int flags)
{

 vmxnet3_set_rxfilter(iflib_get_softc(ctx), flags);

 return (0);
}
