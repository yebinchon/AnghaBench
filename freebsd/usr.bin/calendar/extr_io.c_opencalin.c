
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int FILE ;


 int * cal_fopen (int ) ;
 int calendarFile ;
 int * calendarHomes ;
 int calendarNoMail ;
 scalar_t__ chdir (int ) ;
 scalar_t__ doall ;
 int * fopen (int ,char*) ;
 scalar_t__ stat (int ,struct stat*) ;

FILE *
opencalin(void)
{
 struct stat sbuf;
 FILE *fpin;


 if ((fpin = fopen(calendarFile, "r")) == ((void*)0)) {
  if (doall) {
   if (chdir(calendarHomes[0]) != 0)
    return (((void*)0));
   if (stat(calendarNoMail, &sbuf) == 0)
    return (((void*)0));
   if ((fpin = fopen(calendarFile, "r")) == ((void*)0))
    return (((void*)0));
  } else {
   fpin = cal_fopen(calendarFile);
  }
 }
 return (fpin);
}
