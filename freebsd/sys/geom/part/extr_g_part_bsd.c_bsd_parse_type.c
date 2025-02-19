
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ u_int ;
struct TYPE_3__ {scalar_t__ type; int alias; } ;


 int EINVAL ;
 TYPE_1__* bsd_alias_match ;
 char* g_part_alias_name (int ) ;
 int nitems (TYPE_1__*) ;
 scalar_t__ strcasecmp (char const*,char const*) ;
 long strtol (char const*,char**,int ) ;

__attribute__((used)) static int
bsd_parse_type(const char *type, uint8_t *fstype)
{
 const char *alias;
 char *endp;
 long lt;
 int i;

 if (type[0] == '!') {
  lt = strtol(type + 1, &endp, 0);
  if (type[1] == '\0' || *endp != '\0' || lt <= 0 || lt >= 256)
   return (EINVAL);
  *fstype = (u_int)lt;
  return (0);
 }
 for (i = 0; i < nitems(bsd_alias_match); i++) {
  alias = g_part_alias_name(bsd_alias_match[i].alias);
  if (strcasecmp(type, alias) == 0) {
   *fstype = bsd_alias_match[i].type;
   return (0);
  }
 }
 return (EINVAL);
}
