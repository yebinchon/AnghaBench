
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_year; int tm_mon; int tm_mday; } ;


 int createdate (int,int,int) ;
 size_t isleap (int) ;
 int* monthdays ;
 int** monthdaytab ;

void
generatedates(struct tm *tp1, struct tm *tp2)
{
 int y1, m1, d1;
 int y2, m2, d2;
 int y, m, d;

 y1 = tp1->tm_year;
 m1 = tp1->tm_mon + 1;
 d1 = tp1->tm_mday;
 y2 = tp2->tm_year;
 m2 = tp2->tm_mon + 1;
 d2 = tp2->tm_mday;

 if (y1 == y2) {
  if (m1 == m2) {

   for (d = d1; d <= d2; d++)
    createdate(y1, m1, d);
   return;
  }






  monthdays = monthdaytab[isleap(y1)];
  for (d = d1; d <= monthdays[m1]; d++)
   createdate(y1, m1, d);
  for (m = m1 + 1; m < m2; m++)
   for (d = 1; d <= monthdays[m]; d++)
    createdate(y1, m, d);
  for (d = 1; d <= d2; d++)
   createdate(y1, m2, d);
  return;
 }
 monthdays = monthdaytab[isleap(y1)];
 for (d = d1; d <= monthdays[m1]; d++)
  createdate(y1, m1, d);
 for (m = m1 + 1; m <= 12; m++)
  for (d = 1; d <= monthdays[m]; d++)
   createdate(y1, m, d);
 for (y = y1 + 1; y < y2; y++) {
  monthdays = monthdaytab[isleap(y)];
  for (m = 1; m <= 12; m++)
   for (d = 1; d <= monthdays[m]; d++)
    createdate(y, m, d);
 }
 monthdays = monthdaytab[isleap(y2)];
 for (m = 1; m < m2; m++)
  for (d = 1; d <= monthdays[m]; d++)
   createdate(y2, m, d);
 for (d = 1; d <= d2; d++)
  createdate(y2, m2, d);
}
