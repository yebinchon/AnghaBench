
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int Tflag ;
 int* cline ;
 int errx (int ,char*) ;
 int * fp ;
 char* get_line (int ,size_t*) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static int
skip(int i, int from, const char *pr)
{
 size_t j, n;
 char *line;

 for (n = 0; cline[i] < from - 1; n += j) {
  if ((line = get_line(fp[i], &j)) == ((void*)0))
   errx(EXIT_FAILURE, "logic error");
  if (pr != ((void*)0))
   printf("%s%s", Tflag == 1? "\t" : pr, line);
  cline[i]++;
 }
 return ((int) n);
}
