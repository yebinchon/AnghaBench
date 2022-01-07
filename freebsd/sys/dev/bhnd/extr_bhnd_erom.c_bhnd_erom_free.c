
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kobj_t ;
typedef int bhnd_erom_t ;


 int BHND_EROM_FINI (int *) ;
 int M_BHND ;
 int kobj_delete (int ,int ) ;

void
bhnd_erom_free(bhnd_erom_t *erom)
{
 BHND_EROM_FINI(erom);
 kobj_delete((kobj_t)erom, M_BHND);
}
