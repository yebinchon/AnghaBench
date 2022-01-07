
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oid_array {int dummy; } ;
struct object_id {int dummy; } ;


 int _ (char*) ;
 int check_no_capabilities (char const*,int) ;
 int die (int ,...) ;
 scalar_t__ get_oid_hex (char const*,struct object_id*) ;
 int oid_array_append (struct oid_array*,struct object_id*) ;
 int skip_prefix (char const*,char*,char const**) ;

__attribute__((used)) static int process_shallow(const char *line, int len,
      struct oid_array *shallow_points)
{
 const char *arg;
 struct object_id old_oid;

 if (!skip_prefix(line, "shallow ", &arg))
  return 0;

 if (get_oid_hex(arg, &old_oid))
  die(_("protocol error: expected shallow sha-1, got '%s'"), arg);
 if (!shallow_points)
  die(_("repository on the other end cannot be shallow"));
 oid_array_append(shallow_points, &old_oid);
 check_no_capabilities(line, len);
 return 1;
}
