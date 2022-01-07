
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int def_name; } ;
typedef TYPE_1__ definition ;


 int streq (int ,char const*) ;

__attribute__((used)) static int
findit(definition *def, const char *type)
{
 return (streq(def->def_name, type));
}
