
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_6__ {int spa_domain; int spa_memattr; int spa_efi_mem_flags; scalar_t__ spa_len; scalar_t__ spa_phys_base; } ;
struct SPA_mapping {int spa_type; int spa_nfit_idx; TYPE_3__ dev; } ;
typedef enum SPA_mapping_type { ____Placeholder_SPA_mapping_type } SPA_mapping_type ;
struct TYPE_7__ {int u_usr_acc; int u_name; } ;
struct TYPE_5__ {int RangeIndex; int Flags; int ProximityDomain; int MemoryMapping; scalar_t__ Length; scalar_t__ Address; } ;
typedef TYPE_1__ ACPI_NFIT_SYSTEM_ADDRESS ;


 int ACPI_NFIT_PROXIMITY_VALID ;
 int M_NVDIMM ;
 int asprintf (char**,int ,char*,int) ;
 scalar_t__ bootverbose ;
 int free (char*,int ) ;
 TYPE_4__* nvdimm_SPA_uuid_list ;
 int nvdimm_spa_dev_init (TYPE_3__*,char*,int) ;
 int nvdimm_spa_memattr (int ) ;
 int printf (char*,int,int ,int ,int ,int ) ;

int
nvdimm_spa_init(struct SPA_mapping *spa, ACPI_NFIT_SYSTEM_ADDRESS *nfitaddr,
    enum SPA_mapping_type spa_type)
{
 char *name;
 int error;

 spa->spa_type = spa_type;
 spa->spa_nfit_idx = nfitaddr->RangeIndex;
 spa->dev.spa_domain =
     ((nfitaddr->Flags & ACPI_NFIT_PROXIMITY_VALID) != 0) ?
     nfitaddr->ProximityDomain : -1;
 spa->dev.spa_phys_base = nfitaddr->Address;
 spa->dev.spa_len = nfitaddr->Length;
 spa->dev.spa_efi_mem_flags = nfitaddr->MemoryMapping;
 if (bootverbose) {
  printf("NVDIMM SPA%d base %#016jx len %#016jx %s fl %#jx\n",
      spa->spa_nfit_idx,
      (uintmax_t)spa->dev.spa_phys_base,
      (uintmax_t)spa->dev.spa_len,
      nvdimm_SPA_uuid_list[spa_type].u_name,
      spa->dev.spa_efi_mem_flags);
 }
 spa->dev.spa_memattr = nvdimm_spa_memattr(nfitaddr->MemoryMapping);
 if (!nvdimm_SPA_uuid_list[spa_type].u_usr_acc)
  return (0);

 asprintf(&name, M_NVDIMM, "spa%d", spa->spa_nfit_idx);
 error = nvdimm_spa_dev_init(&spa->dev, name, spa->spa_nfit_idx);
 free(name, M_NVDIMM);
 return (error);
}
