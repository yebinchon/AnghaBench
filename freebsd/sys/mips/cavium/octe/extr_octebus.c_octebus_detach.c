
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int cvm_oct_cleanup_module (int ) ;

__attribute__((used)) static int
octebus_detach(device_t dev)
{
 cvm_oct_cleanup_module(dev);
 return (0);
}
