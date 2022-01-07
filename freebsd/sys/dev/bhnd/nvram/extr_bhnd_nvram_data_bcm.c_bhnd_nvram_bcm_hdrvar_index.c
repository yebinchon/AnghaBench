
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_bcm_hvar {int dummy; } ;
struct bhnd_nvram_bcm {struct bhnd_nvram_bcm_hvar* hvars; } ;


 int BHND_NV_ASSERT (int ,char*) ;
 int * bhnd_nvram_bcm_to_hdrvar (struct bhnd_nvram_bcm*,void*) ;

__attribute__((used)) static size_t
bhnd_nvram_bcm_hdrvar_index(struct bhnd_nvram_bcm *bcm,
    struct bhnd_nvram_bcm_hvar *hdrvar)
{
 BHND_NV_ASSERT(bhnd_nvram_bcm_to_hdrvar(bcm, (void *)hdrvar) != ((void*)0),
     ("%p is not a valid hdrvar reference", hdrvar));

 return (hdrvar - &bcm->hvars[0]);
}
