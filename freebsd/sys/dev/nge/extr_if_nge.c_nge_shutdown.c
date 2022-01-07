
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int nge_suspend (int ) ;

__attribute__((used)) static int
nge_shutdown(device_t dev)
{

 return (nge_suspend(dev));
}
