
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plot {scalar_t__ span; int width; int height; int* data; int num_datasets; int** bar; } ;


 int MAX_DS ;
 struct plot plot ;
 int printf (char*,...) ;
 int putchar (char) ;
 char* symbol ;

__attribute__((used)) static void
DumpPlot(void)
{
 struct plot *pl;
 int i, j, k;

 pl = &plot;
 if (pl->span == 0) {
  printf("[no plot, span is zero width]\n");
  return;
 }

 putchar('+');
 for (i = 0; i < pl->width; i++)
  putchar('-');
 putchar('+');
 putchar('\n');
 for (i = 1; i < pl->height; i++) {
  putchar('|');
  for (j = 0; j < pl->width; j++) {
   k = pl->data[(pl->height - i) * pl->width + j];
   if (k >= 0 && k < MAX_DS)
    putchar(symbol[k]);
   else
    printf("[%02x]", k);
  }
  putchar('|');
  putchar('\n');
 }
 for (i = 0; i < pl->num_datasets; i++) {
  if (pl->bar[i] == ((void*)0))
   continue;
  putchar('|');
  for (j = 0; j < pl->width; j++) {
   k = pl->bar[i][j];
   if (k == 0)
    k = ' ';
   putchar(k);
  }
  putchar('|');
  putchar('\n');
 }
 putchar('+');
 for (i = 0; i < pl->width; i++)
  putchar('-');
 putchar('+');
 putchar('\n');
}
