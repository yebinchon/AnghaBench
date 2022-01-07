
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int openpic_common_attach (int ,int ) ;

__attribute__((used)) static int
openpic_iobus_attach(device_t dev)
{

 return (openpic_common_attach(dev, 0));
}
