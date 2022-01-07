
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int octe_detach (int ) ;

__attribute__((used)) static int
octe_shutdown(device_t dev)
{
 return (octe_detach(dev));
}
