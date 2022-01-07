
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; long tm_mon; long tm_mday; } ;


 struct tm* localtime (int *) ;
 int time (int *) ;

__attribute__((used)) static void
assign_date(struct tm *tm, long mday, long mon, long year)
{





    if (year != -1) {
 if (year >= 1900)
  year -= 1900;
 else if (year < 100) {

  struct tm *lt;
  time_t now;

  time(&now);
  lt = localtime(&now);


  year += (lt->tm_year / 100) * 100;

  if (year == lt->tm_year - 1) year++;
  else if (year < lt->tm_year)
   year += 100;
 }
    }

    if (year < 0 &&
 (tm->tm_mon > mon ||(tm->tm_mon == mon && tm->tm_mday > mday)))
 year = tm->tm_year + 1;

    tm->tm_mday = mday;
    tm->tm_mon = mon;

    if (year >= 0)
 tm->tm_year = year;
}
