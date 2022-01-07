
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char*) ;

__attribute__((used)) static void
aic_print_include(FILE *dfile, char *header_file)
{

 if (dfile == ((void*)0))
  return;
 fprintf(dfile, "\n#include \"%s\"\n\n", header_file);
}
