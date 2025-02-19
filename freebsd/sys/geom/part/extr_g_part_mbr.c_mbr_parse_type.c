
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_3__ {scalar_t__ typ; int alias; } ;


 int EINVAL ;
 char* g_part_alias_name (int ) ;
 TYPE_1__* mbr_alias_match ;
 int nitems (TYPE_1__*) ;
 scalar_t__ strcasecmp (char const*,char const*) ;
 long strtol (char const*,char**,int ) ;

__attribute__((used)) static int
mbr_parse_type(const char *type, u_char *dp_typ)
{
 const char *alias;
 char *endp;
 long lt;
 int i;

 if (type[0] == '!') {
  lt = strtol(type + 1, &endp, 0);
  if (type[1] == '\0' || *endp != '\0' || lt <= 0 || lt >= 256)
   return (EINVAL);
  *dp_typ = (u_char)lt;
  return (0);
 }
 for (i = 0; i < nitems(mbr_alias_match); i++) {
  alias = g_part_alias_name(mbr_alias_match[i].alias);
  if (strcasecmp(type, alias) == 0) {
   *dp_typ = mbr_alias_match[i].typ;
   return (0);
  }
 }
 return (EINVAL);
}
