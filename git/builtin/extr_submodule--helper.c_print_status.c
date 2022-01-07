
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 unsigned int OPT_QUIET ;
 char* compute_rev_name (char const*,char*) ;
 char* oid_to_hex (struct object_id const*) ;
 int printf (char*,...) ;

__attribute__((used)) static void print_status(unsigned int flags, char state, const char *path,
    const struct object_id *oid, const char *displaypath)
{
 if (flags & OPT_QUIET)
  return;

 printf("%c%s %s", state, oid_to_hex(oid), displaypath);

 if (state == ' ' || state == '+') {
  const char *name = compute_rev_name(path, oid_to_hex(oid));

  if (name)
   printf(" (%s)", name);
 }

 printf("\n");
}
