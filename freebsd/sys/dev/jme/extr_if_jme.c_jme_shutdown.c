
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int jme_suspend (int ) ;

__attribute__((used)) static int
jme_shutdown(device_t dev)
{

 return (jme_suspend(dev));
}
