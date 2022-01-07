
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int err (int,char*,char*) ;
 int exit (int ) ;
 scalar_t__ feof (int *) ;
 scalar_t__ ferror (int *) ;
 int * stdin ;

void
check(FILE *stream)
{
 if (feof(stream))
  exit(0);
 if (ferror(stream))
  err(1, "%s", stream == stdin ? "stdin" : "stdout");
}
