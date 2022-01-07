
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ws ;
typedef int wchar_t ;
struct weekdays {char** names; } ;
struct monthlines {int * extralen; scalar_t__* lines; int * name; } ;


 int DECREASEMONTH (int,int) ;
 int M2M (int) ;
 int M2Y (int) ;
 int MAX_WIDTH ;
 int MONTH_WIDTH_B ;
 int MONTH_WIDTH_B_J ;
 char* MW (int,int ) ;
 char* center (char*,char*,int) ;
 int mkmonthb (int,int,int,struct monthlines*) ;
 int mkweekdays (struct weekdays*) ;
 int printf (char*,...) ;
 int sprintf (char*,char*,int) ;
 int swprintf (int *,int,char*,int *,int) ;
 int wcenter (int *,int *,int) ;
 int wprintf (char*,...) ;

__attribute__((used)) static void
monthrangeb(int y, int m, int jd_flag, int before, int after)
{
 struct monthlines year[12];
 struct weekdays wds;
 char s[MAX_WIDTH], t[MAX_WIDTH];
 wchar_t ws[MAX_WIDTH], ws1[MAX_WIDTH];
 const char *wdss;
 int i, j;
 int mpl;
 int mw;
 int m1, m2;
 int printyearheader;
 int prevyear = -1;

 mpl = jd_flag ? 2 : 3;
 mw = jd_flag ? MONTH_WIDTH_B_J : MONTH_WIDTH_B;
 wdss = (mpl == 2) ? " " : "";

 while (before != 0) {
  DECREASEMONTH(m, y);
  before--;
  after++;
 }
 m1 = y * 12 + m - 1;
 m2 = m1 + after;

 mkweekdays(&wds);






 printyearheader = (after >= mpl - 1) && (M2M(m1) - 1) % mpl == 0;

 m = m1;
 while (m <= m2) {
  int count = 0;
  for (i = 0; i != mpl && m + i <= m2; i++) {
   mkmonthb(M2Y(m + i), M2M(m + i) - 1, jd_flag, year + i);
   count++;
  }


  if (m != m1)
   printf("\n");


  if (printyearheader && M2Y(m) != prevyear) {
   sprintf(s, "%d", M2Y(m));
   printf("%s\n", center(t, s, mpl * mw));
   prevyear = M2Y(m);
  }


  for (i = 0; i < count; i++)
   if (printyearheader)
    wprintf(L"%-*ls  ",
        mw, wcenter(ws, year[i].name, mw));
   else {
    swprintf(ws, sizeof(ws)/sizeof(ws[0]),
        L"%-ls %d", year[i].name, M2Y(m + i));
    wprintf(L"%-*ls  ", mw, wcenter(ws1, ws, mw));
   }
  printf("\n");


  for (i = 0; i < count; i++) {
   wprintf(L"%s%ls%s%ls%s%ls%s%ls%s%ls%s%ls%s%ls ",
    wdss, wds.names[6], wdss, wds.names[0],
    wdss, wds.names[1], wdss, wds.names[2],
    wdss, wds.names[3], wdss, wds.names[4],
    wdss, wds.names[5]);
  }
  printf("\n");


  for (i = 0; i != 6; i++) {
   for (j = 0; j < count; j++)
    printf("%-*s  ",
        MW(mw, year[j].extralen[i]),
     year[j].lines[i]+1);
   printf("\n");
  }

  m += mpl;
 }
}
