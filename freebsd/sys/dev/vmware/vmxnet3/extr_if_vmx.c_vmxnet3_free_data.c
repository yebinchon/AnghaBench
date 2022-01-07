
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_softc {int dummy; } ;


 int vmxnet3_free_mcast_table (struct vmxnet3_softc*) ;
 int vmxnet3_free_shared_data (struct vmxnet3_softc*) ;

__attribute__((used)) static void
vmxnet3_free_data(struct vmxnet3_softc *sc)
{

 vmxnet3_free_mcast_table(sc);
 vmxnet3_free_shared_data(sc);
}
