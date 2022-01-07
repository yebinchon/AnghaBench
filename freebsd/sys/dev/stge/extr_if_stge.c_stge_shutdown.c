
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int stge_suspend (int ) ;

__attribute__((used)) static int
stge_shutdown(device_t dev)
{

 return (stge_suspend(dev));
}
