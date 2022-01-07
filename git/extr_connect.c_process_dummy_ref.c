
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int null_oid ;
 scalar_t__ oideq (int *,struct object_id*) ;
 scalar_t__ parse_oid_hex (char const*,struct object_id*,char const**) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int process_dummy_ref(const char *line)
{
 struct object_id oid;
 const char *name;

 if (parse_oid_hex(line, &oid, &name))
  return 0;
 if (*name != ' ')
  return 0;
 name++;

 return oideq(&null_oid, &oid) && !strcmp(name, "capabilities^{}");
}
