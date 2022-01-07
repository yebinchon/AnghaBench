
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_softc {int dummy; } ;


 int vmxnet3_alloc_mcast_table (struct vmxnet3_softc*) ;
 int vmxnet3_alloc_shared_data (struct vmxnet3_softc*) ;
 int vmxnet3_init_shared_data (struct vmxnet3_softc*) ;

__attribute__((used)) static int
vmxnet3_alloc_data(struct vmxnet3_softc *sc)
{
 int error;

 error = vmxnet3_alloc_shared_data(sc);
 if (error)
  return (error);

 error = vmxnet3_alloc_mcast_table(sc);
 if (error)
  return (error);

 vmxnet3_init_shared_data(sc);

 return (0);
}
