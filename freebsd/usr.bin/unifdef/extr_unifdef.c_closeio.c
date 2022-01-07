
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOF ;
 int err (int,char*,int ) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int filename ;
 int * input ;
 int * output ;
 int printf (char*) ;
 scalar_t__ symdepth ;
 int zerosyms ;

__attribute__((used)) static void
closeio(void)
{

 if (symdepth && !zerosyms)
  printf("\n");
 if (output != ((void*)0) && (ferror(output) || fclose(output) == EOF))
   err(2, "%s: can't write to output", filename);
 fclose(input);
}
