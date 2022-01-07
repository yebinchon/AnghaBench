
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int nfe_suspend (int ) ;

__attribute__((used)) static int
nfe_shutdown(device_t dev)
{

 return (nfe_suspend(dev));
}
