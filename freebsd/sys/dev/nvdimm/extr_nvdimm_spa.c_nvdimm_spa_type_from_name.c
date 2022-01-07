
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum SPA_mapping_type { ____Placeholder_SPA_mapping_type } SPA_mapping_type ;
struct TYPE_3__ {int u_name; } ;


 int SPA_TYPE_UNKNOWN ;
 int nitems (TYPE_1__*) ;
 TYPE_1__* nvdimm_SPA_uuid_list ;
 scalar_t__ strcmp (char const*,int ) ;

enum SPA_mapping_type
nvdimm_spa_type_from_name(const char *name)
{
 int j;

 for (j = 0; j < nitems(nvdimm_SPA_uuid_list); j++) {
  if (strcmp(name, nvdimm_SPA_uuid_list[j].u_name) != 0)
   continue;
  return (j);
 }
 return (SPA_TYPE_UNKNOWN);
}
