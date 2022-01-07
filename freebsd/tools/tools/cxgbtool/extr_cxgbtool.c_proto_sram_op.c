
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_proto_sram (char const*) ;

__attribute__((used)) static int
proto_sram_op(int argc, char *argv[], int start_arg,
    const char *iff_name)
{
 (void) argv;
 (void) start_arg;

 if (argc == start_arg)
  return dump_proto_sram(iff_name);
 return -1;
}
