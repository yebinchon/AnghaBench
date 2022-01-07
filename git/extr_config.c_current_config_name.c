
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* filename; } ;


 int BUG (char*) ;
 TYPE_2__* cf ;
 TYPE_1__* current_config_kvi ;

const char *current_config_name(void)
{
 const char *name;
 if (current_config_kvi)
  name = current_config_kvi->filename;
 else if (cf)
  name = cf->name;
 else
  BUG("current_config_name called outside config callback");
 return name ? name : "";
}
