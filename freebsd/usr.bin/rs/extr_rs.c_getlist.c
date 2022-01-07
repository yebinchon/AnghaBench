
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short atoi (char*) ;
 int errx (int,char*,...) ;
 int fflush (int ) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ malloc (int) ;
 int printf (char*,short) ;
 int stdout ;

__attribute__((used)) static char *
getlist(short **list, char *p)
{
 int count = 1;
 char *t;

 for (t = p + 1; *t; t++) {
  if (!isdigit((unsigned char)*t))
   errx(1,
 "option %.1s requires a list of unsigned numbers separated by commas", t);
  count++;
  while (*t && isdigit((unsigned char)*t))
   t++;
  if (*t != ',')
   break;
 }
 if (!(*list = (short *) malloc(count * sizeof(short))))
  errx(1, "no list space");
 count = 0;
 for (t = p + 1; *t; t++) {
  (*list)[count++] = atoi(t);
  printf("++ %d ", (*list)[count-1]);
  fflush(stdout);
  while (*t && isdigit((unsigned char)*t))
   t++;
  if (*t != ',')
   break;
 }
 (*list)[count] = 0;
 return(t - 1);
}
