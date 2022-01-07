
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int putc (char,int *) ;
 char* signature ;
 int strlen (char*) ;

__attribute__((used)) static void print_signature(FILE *file)
{
 if (!signature || !*signature)
  return;

 fprintf(file, "-- \n%s", signature);
 if (signature[strlen(signature)-1] != '\n')
  putc('\n', file);
 putc('\n', file);
}
