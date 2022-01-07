
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUN_GIT_CMD ;
 int run_command_v_opt (char const**,int ) ;

__attribute__((used)) static int print_tool_help(void)
{
 const char *argv[] = { "mergetool", "--tool-help=diff", ((void*)0) };
 return run_command_v_opt(argv, RUN_GIT_CMD);
}
