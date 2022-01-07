
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_softc {int dummy; } ;
typedef int if_ctx_t ;


 struct vmxnet3_softc* iflib_get_softc (int ) ;
 int vmxnet3_free_data (struct vmxnet3_softc*) ;
 int vmxnet3_free_irqs (struct vmxnet3_softc*) ;
 int vmxnet3_free_resources (struct vmxnet3_softc*) ;

__attribute__((used)) static int
vmxnet3_detach(if_ctx_t ctx)
{
 struct vmxnet3_softc *sc;

 sc = iflib_get_softc(ctx);

 vmxnet3_free_irqs(sc);
 vmxnet3_free_data(sc);
 vmxnet3_free_resources(sc);

 return (0);
}
