
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_core_info {int dummy; } ;
typedef int bhnd_erom_t ;


 int M_BHND ;
 int free (struct bhnd_core_info*,int ) ;

__attribute__((used)) static void
siba_erom_free_core_table(bhnd_erom_t *erom, struct bhnd_core_info *cores)
{
 free(cores, M_BHND);
}
