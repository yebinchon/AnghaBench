
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* monthdays; } ;


 int first_dayofweek_of_month (int,int) ;
 int warnx (char*) ;
 TYPE_1__* yearinfo ;

__attribute__((used)) static int
wdayom (int day, int offset, int month, int year)
{

 int wday1;

 int wdayn;
 int d;

 wday1 = first_dayofweek_of_month(year, month);
 if (wday1 < 0)
  return (wday1);




 d = (day - wday1 + 1) % 7;





 if (offset < 0) {

  wdayn = d;
  while (wdayn <= yearinfo->monthdays[month])
   wdayn += 7;
  d = offset * 7 + wdayn;
 } else if (offset > 0){
  if (d > 0)
   d += offset * 7 - 7;
  else
   d += offset * 7;
 } else
  warnx ("Invalid offset 0");
 return (d);
}
