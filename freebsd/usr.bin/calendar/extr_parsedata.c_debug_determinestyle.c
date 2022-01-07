
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;
 char* showflags (int) ;

__attribute__((used)) static void
debug_determinestyle(int dateonly, char *date, int flags, char *month,
    int imonth, char *dayofmonth, int idayofmonth, char *dayofweek,
    int idayofweek, char *modifieroffset, char *modifierindex, char *specialday,
    char *year, int iyear)
{

 if (dateonly != 0) {
  printf("-------\ndate: |%s|\n", date);
  if (dateonly == 1)
   return;
 }
 printf("flags: %x - %s\n", flags, showflags(flags));
 if (modifieroffset[0] != '\0')
  printf("modifieroffset: |%s|\n", modifieroffset);
 if (modifierindex[0] != '\0')
  printf("modifierindex: |%s|\n", modifierindex);
 if (year[0] != '\0')
  printf("year: |%s| (%d)\n", year, iyear);
 if (month[0] != '\0')
  printf("month: |%s| (%d)\n", month, imonth);
 if (dayofmonth[0] != '\0')
  printf("dayofmonth: |%s| (%d)\n", dayofmonth, idayofmonth);
 if (dayofweek[0] != '\0')
  printf("dayofweek: |%s| (%d)\n", dayofweek, idayofweek);
 if (specialday[0] != '\0')
  printf("specialday: |%s|\n", specialday);
}
