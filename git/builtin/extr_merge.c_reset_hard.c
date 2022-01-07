
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int RUN_GIT_CMD ;
 int _ (char*) ;
 int die (int ) ;
 char* oid_to_hex (struct object_id const*) ;
 scalar_t__ run_command_v_opt (char const**,int ) ;

__attribute__((used)) static void reset_hard(const struct object_id *oid, int verbose)
{
 int i = 0;
 const char *args[6];

 args[i++] = "read-tree";
 if (verbose)
  args[i++] = "-v";
 args[i++] = "--reset";
 args[i++] = "-u";
 args[i++] = oid_to_hex(oid);
 args[i] = ((void*)0);

 if (run_command_v_opt(args, RUN_GIT_CMD))
  die(_("read-tree failed"));
}
