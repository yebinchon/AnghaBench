
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int dummy; } ;
struct bhnd_nvram_bcm_hvar {int dummy; } ;
struct bhnd_nvram_bcm {int dummy; } ;


 struct bhnd_nvram_bcm_hvar* bhnd_nvram_bcm_to_hdrvar (struct bhnd_nvram_bcm*,void*) ;

__attribute__((used)) static int
bhnd_nvram_bcm_getvar_order(struct bhnd_nvram_data *nv, void *cookiep1,
    void *cookiep2)
{
 struct bhnd_nvram_bcm *bcm;
 struct bhnd_nvram_bcm_hvar *hvar1, *hvar2;

 bcm = (struct bhnd_nvram_bcm *)nv;

 hvar1 = bhnd_nvram_bcm_to_hdrvar(bcm, cookiep1);
 hvar2 = bhnd_nvram_bcm_to_hdrvar(bcm, cookiep2);



 if (hvar1 != ((void*)0) && hvar2 == ((void*)0)) {
  return (1);
 } else if (hvar1 == ((void*)0) && hvar2 != ((void*)0)) {
  return (-1);
 }





 if (cookiep1 < cookiep2)
  return (-1);

 if (cookiep1 > cookiep2)
  return (1);

 return (0);
}
