
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_prog (char*) ;

void
add_progs(int argc, char **argv)
{
 int i;

 for (i = 1; i < argc; i++)
  add_prog(argv[i]);
}
