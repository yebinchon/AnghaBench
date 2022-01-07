
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int RUN_GIT_CMD ;
 int _ (char*) ;
 int die (int ) ;
 char* empty_tree_oid_hex () ;
 char* oid_to_hex (struct object_id const*) ;
 scalar_t__ run_command_v_opt (char const**,int ) ;

__attribute__((used)) static void read_empty(const struct object_id *oid, int verbose)
{
 int i = 0;
 const char *args[7];

 args[i++] = "read-tree";
 if (verbose)
  args[i++] = "-v";
 args[i++] = "-m";
 args[i++] = "-u";
 args[i++] = empty_tree_oid_hex();
 args[i++] = oid_to_hex(oid);
 args[i] = ((void*)0);

 if (run_command_v_opt(args, RUN_GIT_CMD))
  die(_("read-tree failed"));
}
