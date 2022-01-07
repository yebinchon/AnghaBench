
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int argv; int argc; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int argv_array_push (struct argv_array*,char const*) ;
 int argv_array_pushl (struct argv_array*,char*,char*,int *) ;
 int cmd_blame (int ,int ,char const*) ;

int cmd_annotate(int argc, const char **argv, const char *prefix)
{
 struct argv_array args = ARGV_ARRAY_INIT;
 int i;

 argv_array_pushl(&args, "annotate", "-c", ((void*)0));

 for (i = 1; i < argc; i++) {
  argv_array_push(&args, argv[i]);
 }

 return cmd_blame(args.argc, args.argv, prefix);
}
