
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_erom_t ;


 void BHND_EROM_FINI (int *) ;

void
bhnd_erom_fini_static(bhnd_erom_t *erom)
{
 return (BHND_EROM_FINI(erom));
}
