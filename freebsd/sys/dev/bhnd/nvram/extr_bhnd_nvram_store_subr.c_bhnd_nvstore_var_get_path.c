
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bhnd_nvram_store {int dummy; } ;
typedef int bhnd_nvstore_path ;
struct TYPE_7__ {int value; } ;
struct TYPE_6__ {int value_len; int value; } ;
struct TYPE_8__ {TYPE_2__ alias; TYPE_1__ str; } ;
struct TYPE_9__ {int path_type; TYPE_3__ path; } ;
typedef TYPE_4__ bhnd_nvstore_name_info ;




 int BHND_NV_PANIC (char*,int) ;
 int * bhnd_nvstore_get_path (struct bhnd_nvram_store*,int ,int ) ;
 int * bhnd_nvstore_resolve_path_alias (struct bhnd_nvram_store*,int ) ;

bhnd_nvstore_path *
bhnd_nvstore_var_get_path(struct bhnd_nvram_store *sc,
    bhnd_nvstore_name_info *info)
{
 switch (info->path_type) {
 case 128:
  return (bhnd_nvstore_get_path(sc, info->path.str.value,
      info->path.str.value_len));
 case 129:
  return (bhnd_nvstore_resolve_path_alias(sc,
      info->path.alias.value));
 }

 BHND_NV_PANIC("unsupported path type %d", info->path_type);
}
