
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int co; } ;
struct TYPE_5__ {TYPE_1__ def; int def_name; } ;
typedef TYPE_2__ definition ;


 int pdefine (int ,int ) ;

__attribute__((used)) static void
pconstdef(definition *def)
{
 pdefine(def->def_name, def->def.co);
}
