
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int enqueue (int *,char,char*) ;
 int errx (int,char*) ;
 size_t file2ln ;
 int processq () ;
 char* xfgets (int *) ;

__attribute__((used)) static void
printa(FILE *file, size_t line2)
{
 char *line;

 for (; file2ln <= line2; ++file2ln) {
  if (!(line = xfgets(file)))
   errx(2, "append ended early");
  enqueue(((void*)0), '>', line);
 }
 processq();
}
