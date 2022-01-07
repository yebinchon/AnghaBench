
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iic_dp_aux_data {int * port; } ;
typedef int device_t ;


 int ENXIO ;
 int bus_generic_attach (int ) ;
 int * device_add_child (int ,char*,int) ;
 struct iic_dp_aux_data* device_get_softc (int ) ;
 int device_quiet (int *) ;

__attribute__((used)) static int
iic_dp_aux_attach(device_t idev)
{
 struct iic_dp_aux_data *aux_data;

 aux_data = device_get_softc(idev);
 aux_data->port = device_add_child(idev, "iicbus", -1);
 if (aux_data->port == ((void*)0))
  return (ENXIO);
 device_quiet(aux_data->port);
 bus_generic_attach(idev);
 return (0);
}
