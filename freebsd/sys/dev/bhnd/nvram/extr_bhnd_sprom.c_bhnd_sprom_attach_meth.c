
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bhnd_sprom_attach (int ,int ) ;

__attribute__((used)) static int
bhnd_sprom_attach_meth(device_t dev)
{
 return (bhnd_sprom_attach(dev, 0));
}
