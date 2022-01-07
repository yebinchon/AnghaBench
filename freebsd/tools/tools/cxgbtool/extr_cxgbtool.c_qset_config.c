
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_qset_params (char const*) ;

__attribute__((used)) static int
qset_config(int argc, char *argv[], int start_arg, const char *iff_name)
{
 (void) argv;

 if (argc == start_arg)
  return dump_qset_params(iff_name);

 return -1;
}
