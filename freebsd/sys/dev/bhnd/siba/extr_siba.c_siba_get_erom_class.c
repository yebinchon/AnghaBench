
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int bhnd_erom_class_t ;


 int siba_erom_parser ;

__attribute__((used)) static bhnd_erom_class_t *
siba_get_erom_class(driver_t *driver)
{
 return (&siba_erom_parser);
}
