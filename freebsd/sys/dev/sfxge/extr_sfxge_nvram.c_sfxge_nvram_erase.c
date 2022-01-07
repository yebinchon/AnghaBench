
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {scalar_t__ family; int * enp; } ;
typedef int efx_nvram_type_t ;
typedef int efx_nic_t ;


 scalar_t__ EFX_FAMILY_SIENA ;
 int EFX_NVRAM_DYNAMIC_CFG ;
 int efx_nvram_erase (int *,int ) ;
 int efx_nvram_rw_finish (int *,int ,int *) ;
 int efx_nvram_rw_start (int *,int ,size_t*) ;

__attribute__((used)) static int
sfxge_nvram_erase(struct sfxge_softc *sc, efx_nvram_type_t type)
{
 efx_nic_t *enp = sc->enp;
 size_t chunk_size;
 int rc = 0;

 if (type == EFX_NVRAM_DYNAMIC_CFG && sc->family == EFX_FAMILY_SIENA)
  return (0);

 if ((rc = efx_nvram_rw_start(enp, type, &chunk_size)) != 0)
  return (rc);

 rc = efx_nvram_erase(enp, type);

 efx_nvram_rw_finish(enp, type, ((void*)0));
 return (rc);
}
