
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uuid {int dummy; } ;
struct g_part_uuid_alias {struct uuid* uuid; int alias; } ;


 int EINVAL ;
 scalar_t__ EQUUID (struct uuid*,int *) ;
 char* g_part_alias_name (int ) ;
 struct g_part_uuid_alias* gpt_uuid_alias_match ;
 int gpt_uuid_unused ;
 int parse_uuid (char const*,struct uuid*) ;
 int strcasecmp (char const*,char const*) ;

__attribute__((used)) static int
gpt_parse_type(const char *type, struct uuid *uuid)
{
 struct uuid tmp;
 const char *alias;
 int error;
 struct g_part_uuid_alias *uap;

 if (type[0] == '!') {
  error = parse_uuid(type + 1, &tmp);
  if (error)
   return (error);
  if (EQUUID(&tmp, &gpt_uuid_unused))
   return (EINVAL);
  *uuid = tmp;
  return (0);
 }
 for (uap = &gpt_uuid_alias_match[0]; uap->uuid; uap++) {
  alias = g_part_alias_name(uap->alias);
  if (!strcasecmp(type, alias)) {
   *uuid = *uap->uuid;
   return (0);
  }
 }
 return (EINVAL);
}
