
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum SPA_mapping_type { ____Placeholder_SPA_mapping_type } SPA_mapping_type ;
struct TYPE_3__ {int u_usr_acc; } ;


 int nitems (TYPE_1__*) ;
 TYPE_1__* nvdimm_SPA_uuid_list ;

bool
nvdimm_spa_type_user_accessible(enum SPA_mapping_type spa_type)
{

 if ((int)spa_type < 0 || spa_type >= nitems(nvdimm_SPA_uuid_list))
  return (0);
 return (nvdimm_SPA_uuid_list[spa_type].u_usr_acc);
}
