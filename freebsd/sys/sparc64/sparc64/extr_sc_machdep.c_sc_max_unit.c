
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int devclass_get_maxunit (int ) ;
 int sc_devclass ;

int
sc_max_unit(void)
{

 return (devclass_get_maxunit(sc_devclass));
}
