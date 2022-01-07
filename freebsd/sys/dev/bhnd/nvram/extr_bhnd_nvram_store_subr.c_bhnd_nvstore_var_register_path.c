
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bhnd_nvram_store {int dummy; } ;
struct TYPE_6__ {int value_len; int value; } ;
struct TYPE_7__ {TYPE_1__ str; } ;
struct TYPE_8__ {int type; int path_type; TYPE_2__ path; } ;
typedef TYPE_3__ bhnd_nvstore_name_info ;






 int BHND_NV_PANIC (char*,int) ;
 int bhnd_nvstore_register_alias (struct bhnd_nvram_store*,TYPE_3__*,void*) ;
 int bhnd_nvstore_register_path (struct bhnd_nvram_store*,int ,int ) ;

int
bhnd_nvstore_var_register_path(struct bhnd_nvram_store *sc,
    bhnd_nvstore_name_info *info, void *cookiep)
{
 switch (info->type) {
 case 128:

  switch (info->path_type) {
  case 129:


   return (bhnd_nvstore_register_path(sc,
       info->path.str.value, info->path.str.value_len));

  case 130:


   return (0);
  }

  BHND_NV_PANIC("unsupported path type %d", info->path_type);
  break;

 case 131:

  return (bhnd_nvstore_register_alias(sc, info, cookiep));
 }

 BHND_NV_PANIC("unsupported var type %d", info->type);
}
