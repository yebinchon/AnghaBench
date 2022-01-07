
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nr; TYPE_1__* items; } ;
struct TYPE_4__ {int string; } ;


 TYPE_2__ pack_garbage ;
 int string_list_clear (TYPE_2__*,int ) ;
 int unlink_or_warn (int ) ;

__attribute__((used)) static void clean_pack_garbage(void)
{
 int i;
 for (i = 0; i < pack_garbage.nr; i++)
  unlink_or_warn(pack_garbage.items[i].string);
 string_list_clear(&pack_garbage, 0);
}
