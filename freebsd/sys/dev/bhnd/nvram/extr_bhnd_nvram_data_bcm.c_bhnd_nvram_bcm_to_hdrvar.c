
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_bcm_hvar {int dummy; } ;
struct bhnd_nvram_bcm {int * hvars; } ;


 int BHND_NV_ASSERT (int,char*) ;
 int nitems (int *) ;

__attribute__((used)) static struct bhnd_nvram_bcm_hvar *
bhnd_nvram_bcm_to_hdrvar(struct bhnd_nvram_bcm *bcm, void *cookiep)
{






 if (nitems(bcm->hvars) == 0)
  return (((void*)0));

 if (cookiep < (void *)&bcm->hvars[0])
  return (((void*)0));

 if (cookiep > (void *)&bcm->hvars[nitems(bcm->hvars)-1])
  return (((void*)0));
 return ((struct bhnd_nvram_bcm_hvar *)cookiep);
}
