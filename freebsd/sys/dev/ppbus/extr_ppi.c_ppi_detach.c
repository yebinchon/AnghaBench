
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppi_data {int ppi_lock; int * intr_resource; int intr_cookie; int ppi_cdev; } ;
typedef int device_t ;


 struct ppi_data* DEVTOSOFTC (int ) ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 int destroy_dev (int ) ;
 int sx_destroy (int *) ;

__attribute__((used)) static int
ppi_detach(device_t dev)
{
 struct ppi_data *ppi = DEVTOSOFTC(dev);

 destroy_dev(ppi->ppi_cdev);






 sx_destroy(&ppi->ppi_lock);
 return (0);
}
