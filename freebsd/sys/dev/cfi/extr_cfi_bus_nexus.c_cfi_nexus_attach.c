
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int cfi_attach (int ) ;
 int cfi_probe (int ) ;

__attribute__((used)) static int
cfi_nexus_attach(device_t dev)
{
 int error;

 error = cfi_probe(dev);
 if (error != 0)
  return (error);

 return cfi_attach(dev);
}
