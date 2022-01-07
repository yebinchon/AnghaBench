
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;

void
command_Free(int argc, char **argv)
{
  while (argc) {
    free(*argv);
    argc--;
    argv++;
  }
}
