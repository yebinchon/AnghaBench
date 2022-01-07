
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ isblank (char) ;
 int process_cmd (char*,int,int,int *) ;
 int warn (char*) ;

__attribute__((used)) static void
process_file(char *fname, int s, int s6)
{
 char line[80];
 FILE *fp;
 char *lineptr;

 fp = fopen(fname, "r");
 if (fp == ((void*)0)) {
  warn("fopen");
  return;
 }


 while (fgets(line, sizeof(line), fp) != ((void*)0)) {
  lineptr = line;
  while (isblank(*lineptr))
   lineptr++;
  if (*lineptr != '#' && *lineptr != '\n')
   process_cmd(lineptr, s, s6, fp);
 }

 fclose(fp);
}
