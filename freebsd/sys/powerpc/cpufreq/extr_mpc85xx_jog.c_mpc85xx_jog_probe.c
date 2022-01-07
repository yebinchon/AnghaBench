
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_compat_data {int * ocd_str; } ;
typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 struct ofw_compat_data* mpc85xx_jog_devcompat () ;

__attribute__((used)) static int
mpc85xx_jog_probe(device_t dev)
{
 struct ofw_compat_data *compat;

 compat = mpc85xx_jog_devcompat();
 if (compat == ((void*)0) || compat->ocd_str == ((void*)0))
  return (ENXIO);

 device_set_desc(dev, "Freescale CPU Jogger");
 return (0);
}
