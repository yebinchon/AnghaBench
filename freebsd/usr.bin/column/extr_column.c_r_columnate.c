
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAB ;
 int entries ;
 int * list ;
 int maxlength ;
 int putwchar (char) ;
 int roundup (int,int ) ;
 int termwidth ;
 scalar_t__ width (int ) ;
 int wprintf (char*,int ) ;

__attribute__((used)) static void
r_columnate(void)
{
 int base, chcnt, cnt, col, endcol, numcols, numrows, row;

 numcols = termwidth / maxlength;
 numrows = entries / numcols;
 if (entries % numcols)
  ++numrows;

 for (row = 0; row < numrows; ++row) {
  endcol = maxlength;
  for (base = row, chcnt = col = 0; col < numcols; ++col) {
   wprintf(L"%ls", list[base]);
   chcnt += width(list[base]);
   if ((base += numrows) >= entries)
    break;
   while ((cnt = roundup(chcnt + 1, TAB)) <= endcol) {
    (void)putwchar('\t');
    chcnt = cnt;
   }
   endcol += maxlength;
  }
  putwchar('\n');
 }
}
