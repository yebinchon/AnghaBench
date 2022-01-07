
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_bcm_hvar {int name; } ;
struct bhnd_nvram_bcm {struct bhnd_nvram_bcm_hvar* hvars; } ;


 size_t nitems (struct bhnd_nvram_bcm_hvar*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct bhnd_nvram_bcm_hvar *
bhnd_nvram_bcm_gethdrvar(struct bhnd_nvram_bcm *bcm, const char *name)
{
 for (size_t i = 0; i < nitems(bcm->hvars); i++) {
  if (strcmp(bcm->hvars[i].name, name) == 0)
   return (&bcm->hvars[i]);
 }


 return (((void*)0));
}
