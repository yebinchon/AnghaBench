
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ig4iic_softc_t ;
typedef int device_t ;


 int * device_get_softc (int ) ;
 int ig4iic_resume (int *) ;

__attribute__((used)) static int
ig4iic_pci_resume(device_t dev)
{
 ig4iic_softc_t *sc = device_get_softc(dev);

 return (ig4iic_resume(sc));
}
