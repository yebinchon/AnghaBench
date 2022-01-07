
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_string (int *,char*) ;
 int buildopts ;

void
add_buildopts(int argc, char **argv)
{
 int i;

 for (i = 1; i < argc; i++)
  add_string(&buildopts, argv[i]);
}
