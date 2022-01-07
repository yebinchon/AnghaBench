
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int bhnd_erom_class_t ;


 int * BHND_BUS_GET_EROM_CLASS (int *) ;

__attribute__((used)) static inline bhnd_erom_class_t *
bhnd_driver_get_erom_class(driver_t *driver)
{
 return (BHND_BUS_GET_EROM_CLASS(driver));
}
