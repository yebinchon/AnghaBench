
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUN_GIT_CMD ;
 int _ (char*) ;
 int error (int ,char const*) ;
 int printf_ln (int ,char const*) ;
 scalar_t__ run_command_v_opt (char const**,int ) ;
 scalar_t__ verbose ;

__attribute__((used)) static int fetch_remote(const char *name)
{
 const char *argv[] = { "fetch", name, ((void*)0), ((void*)0) };
 if (verbose) {
  argv[1] = "-v";
  argv[2] = name;
 }
 printf_ln(_("Updating %s"), name);
 if (run_command_v_opt(argv, RUN_GIT_CMD))
  return error(_("Could not fetch %s"), name);
 return 0;
}
