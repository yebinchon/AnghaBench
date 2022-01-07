
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int dummy; } ;
struct bhnd_nvram_bcm {int * opts; int * data; } ;


 int bhnd_nvram_io_free (int *) ;
 int bhnd_nvram_plist_release (int *) ;

__attribute__((used)) static void
bhnd_nvram_bcm_free(struct bhnd_nvram_data *nv)
{
 struct bhnd_nvram_bcm *bcm = (struct bhnd_nvram_bcm *)nv;

 if (bcm->data != ((void*)0))
  bhnd_nvram_io_free(bcm->data);

 if (bcm->opts != ((void*)0))
  bhnd_nvram_plist_release(bcm->opts);
}
