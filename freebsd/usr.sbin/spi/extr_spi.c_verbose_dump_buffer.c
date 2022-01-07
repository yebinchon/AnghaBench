
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int fflush (int ) ;
 int fprintf (int ,char*,size_t) ;
 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 size_t* reversebits ;
 int stderr ;

__attribute__((used)) static void
verbose_dump_buffer(void *pbuf, int icount, int lsb)
{
 uint8_t ch;
 int ictr, ictr2, idx;

 fputs("        |  0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F "
       "|                  |\n", stderr);

 for (ictr = 0; ictr < icount; ictr += 16) {
  fprintf(stderr, " %6x | ", ictr & 0xfffff0);

  for (ictr2 = 0; ictr2 < 16; ictr2++) {
   idx = ictr + ictr2;

   if (idx < icount) {
    ch = ((uint8_t *) pbuf)[idx];

    if (lsb)
     ch = reversebits[ch];

    fprintf(stderr, "%02hhx ", ch);
   }
   else {
    fputs("   ", stderr);
   }
  }

  fputs("| ", stderr);

  for (ictr2 = 0; ictr2 < 16; ictr2++) {
   idx = ictr + ictr2;

   if (idx < icount) {
    ch = ((uint8_t *) pbuf)[idx];

    if (lsb)
     ch = reversebits[ch];

    if (ch < ' ' || ch > 127)
     goto out_of_range;

    fprintf(stderr, "%c", ch);
   }
   else if (idx < icount) {
  out_of_range:
    fputc('.', stderr);
   }
   else {
    fputc(' ', stderr);
   }
  }

  fputs(" |\n", stderr);
 }

 fflush(stderr);
}
