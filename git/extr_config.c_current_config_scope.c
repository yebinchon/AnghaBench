
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum config_scope { ____Placeholder_config_scope } config_scope ;
struct TYPE_2__ {int scope; } ;


 TYPE_1__* current_config_kvi ;
 int current_parsing_scope ;

enum config_scope current_config_scope(void)
{
 if (current_config_kvi)
  return current_config_kvi->scope;
 else
  return current_parsing_scope;
}
