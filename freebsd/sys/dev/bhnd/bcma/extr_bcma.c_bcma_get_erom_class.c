
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int bhnd_erom_class_t ;


 int bcma_erom_parser ;

__attribute__((used)) static bhnd_erom_class_t *
bcma_get_erom_class(driver_t *driver)
{
 return (&bcma_erom_parser);
}
