
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int command_loop (char const*) ;
 int usage (int ) ;
 int usage_msg ;

int cmd_remote_ext(int argc, const char **argv, const char *prefix)
{
 if (argc != 3)
  usage(usage_msg);

 return command_loop(argv[2]);
}
