
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int dummy; } ;
struct bhnd_nvram_bcmraw {int * data; } ;


 int bhnd_nv_free (int *) ;

__attribute__((used)) static void
bhnd_nvram_bcmraw_free(struct bhnd_nvram_data *nv)
{
 struct bhnd_nvram_bcmraw *bcm = (struct bhnd_nvram_bcmraw *)nv;

 if (bcm->data != ((void*)0))
  bhnd_nv_free(bcm->data);
}
