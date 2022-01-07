
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int vte_suspend (int ) ;

__attribute__((used)) static int
vte_shutdown(device_t dev)
{

 return (vte_suspend(dev));
}
