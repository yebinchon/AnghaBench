
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int TAB ;
 int entries ;
 int ** list ;
 int maxlength ;
 int putwchar (char) ;
 int roundup (int,int ) ;
 int termwidth ;
 scalar_t__ width (int *) ;
 int wprintf (char*,int *) ;

__attribute__((used)) static void
c_columnate(void)
{
 int chcnt, col, cnt, endcol, numcols;
 wchar_t **lp;

 numcols = termwidth / maxlength;
 endcol = maxlength;
 for (chcnt = col = 0, lp = list;; ++lp) {
  wprintf(L"%ls", *lp);
  chcnt += width(*lp);
  if (!--entries)
   break;
  if (++col == numcols) {
   chcnt = col = 0;
   endcol = maxlength;
   putwchar('\n');
  } else {
   while ((cnt = roundup(chcnt + 1, TAB)) <= endcol) {
    (void)putwchar('\t');
    chcnt = cnt;
   }
   endcol += maxlength;
  }
 }
 if (chcnt)
  putwchar('\n');
}
