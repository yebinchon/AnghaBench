
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int relation ;
struct TYPE_3__ {char* prefix; char* type; char* array_max; int name; int rel; } ;
typedef TYPE_1__ declaration ;


 scalar_t__ isvectordef (char const*,int ) ;
 int print_ifstat (int,char const*,char const*,int ,char const*,char*,int ) ;
 int s_print (char*,char*,int ) ;

__attribute__((used)) static void
print_stat(int indent, declaration *dec)
{
 const char *prefix = dec->prefix;
 const char *type = dec->type;
 const char *amax = dec->array_max;
 relation rel = dec->rel;
 char name[256];

 if (isvectordef(type, rel)) {
  s_print(name, "objp->%s", dec->name);
 } else {
  s_print(name, "&objp->%s", dec->name);
 }
 print_ifstat(indent, prefix, type, rel, amax, name, dec->name);
}
