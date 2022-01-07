
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int putc (char,int *) ;

__attribute__((used)) static void
bprintf(FILE *fp, int b, char *s)
{
 int i;
 int gotsome = 0;

 if (b == 0)
  return;
 while ((i = *s++) != 0) {
  if (b & (1 << (i-1))) {
   if (gotsome == 0)
    i = '<';
   else
    i = ',';
   (void) putc(i, fp);
   gotsome = 1;
   for (; (i = *s) > 32; s++)
    (void) putc(i, fp);
  } else
   while (*s > 32)
    s++;
 }
 if (gotsome)
  putc('>', fp);
}
