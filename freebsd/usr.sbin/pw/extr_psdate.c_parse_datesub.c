
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_year; int tm_mon; int tm_mday; } ;
typedef int locale_t ;


 int EXIT_FAILURE ;
 int LC_ALL_MASK ;
 int errx (int ,char*) ;
 int freelocale (int ) ;
 int memset (struct tm*,int ,int) ;
 int newlocale (int ,char*,int *) ;
 char* strptime_l (char const*,char const*,struct tm*,int ) ;

__attribute__((used)) static void
parse_datesub(char const * str, struct tm *t)
{
 struct tm tm;
 locale_t l;
 int i;
 char *ret;
 const char *valid_formats[] = {
  "%d-%b-%y",
  "%d-%b-%Y",
  "%d-%m-%y",
  "%d-%m-%Y",
  "%H:%M %d-%b-%y",
  "%H:%M %d-%b-%Y",
  "%H:%M %d-%m-%y",
  "%H:%M %d-%m-%Y",
  "%H:%M:%S %d-%b-%y",
  "%H:%M:%S %d-%b-%Y",
  "%H:%M:%S %d-%m-%y",
  "%H:%M:%S %d-%m-%Y",
  "%d-%b-%y %H:%M",
  "%d-%b-%Y %H:%M",
  "%d-%m-%y %H:%M",
  "%d-%m-%Y %H:%M",
  "%d-%b-%y %H:%M:%S",
  "%d-%b-%Y %H:%M:%S",
  "%d-%m-%y %H:%M:%S",
  "%d-%m-%Y %H:%M:%S",
  "%H:%M\t%d-%b-%y",
  "%H:%M\t%d-%b-%Y",
  "%H:%M\t%d-%m-%y",
  "%H:%M\t%d-%m-%Y",
  "%H:%M\t%S %d-%b-%y",
  "%H:%M\t%S %d-%b-%Y",
  "%H:%M\t%S %d-%m-%y",
  "%H:%M\t%S %d-%m-%Y",
  "%d-%b-%y\t%H:%M",
  "%d-%b-%Y\t%H:%M",
  "%d-%m-%y\t%H:%M",
  "%d-%m-%Y\t%H:%M",
  "%d-%b-%y\t%H:%M:%S",
  "%d-%b-%Y\t%H:%M:%S",
  "%d-%m-%y\t%H:%M:%S",
  "%d-%m-%Y\t%H:%M:%S",
  ((void*)0),
 };

 l = newlocale(LC_ALL_MASK, "C", ((void*)0));

 memset(&tm, 0, sizeof(tm));
 for (i=0; valid_formats[i] != ((void*)0); i++) {
  ret = strptime_l(str, valid_formats[i], &tm, l);
  if (ret && *ret == '\0') {
   t->tm_mday = tm.tm_mday;
   t->tm_mon = tm.tm_mon;
   t->tm_year = tm.tm_year;
   t->tm_hour = tm.tm_hour;
   t->tm_min = tm.tm_min;
   t->tm_sec = tm.tm_sec;
   freelocale(l);
   return;
  }
 }

 freelocale(l);

 errx(EXIT_FAILURE, "Invalid date");
}
