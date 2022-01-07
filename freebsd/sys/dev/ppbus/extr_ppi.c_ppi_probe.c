
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppi_data {int dummy; } ;
typedef int device_t ;


 struct ppi_data* DEVTOSOFTC (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
ppi_probe(device_t dev)
{
 struct ppi_data *ppi;


 device_set_desc(dev, "Parallel I/O");

 ppi = DEVTOSOFTC(dev);

 return (0);
}
