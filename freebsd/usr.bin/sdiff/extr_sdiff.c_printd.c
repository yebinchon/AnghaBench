
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int enqueue (char*,char,int *) ;
 int errx (int,char*) ;
 size_t file1ln ;
 int processq () ;
 char* xfgets (int *) ;

__attribute__((used)) static void
printd(FILE *file1, size_t file1end)
{
 char *line1;


 for (; file1ln <= file1end; ++file1ln) {
  if (!(line1 = xfgets(file1)))
   errx(2, "file1 ended early in delete");
  enqueue(line1, '<', ((void*)0));
 }
 processq();
}
