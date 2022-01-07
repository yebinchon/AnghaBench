
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int origin_type; } ;
struct TYPE_3__ {int origin_type; } ;


 int BUG (char*) ;





 TYPE_2__* cf ;
 TYPE_1__* current_config_kvi ;

const char *current_config_origin_type(void)
{
 int type;
 if (current_config_kvi)
  type = current_config_kvi->origin_type;
 else if(cf)
  type = cf->origin_type;
 else
  BUG("current_config_origin_type called outside config callback");

 switch (type) {
 case 132:
  return "blob";
 case 130:
  return "file";
 case 129:
  return "standard input";
 case 128:
  return "submodule-blob";
 case 131:
  return "command line";
 default:
  BUG("unknown config origin type");
 }
}
