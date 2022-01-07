
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ skip_flag; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* large_entity_list ;

void reset_skip_entity(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(large_entity_list); i++)
  large_entity_list[i].skip_flag = 0;
}
