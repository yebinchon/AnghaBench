
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int mvneta_attach (int ) ;
 int mvneta_fdt_phy_acquire (int ) ;

__attribute__((used)) static int
mvneta_fdt_attach(device_t dev)
{
 int err;


 err = mvneta_fdt_phy_acquire(dev);
 if (err != 0)
  return (err);

 return (mvneta_attach(dev));
}
