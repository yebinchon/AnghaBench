
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int an_shutdown (int ) ;

__attribute__((used)) static int
an_suspend_pci(device_t dev)
{
 an_shutdown(dev);

 return (0);
}
