
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int longstring ;


 int D_MD_ORDER ;
 scalar_t__ SIXMONTHS ;
 int fputs (char*,int ) ;
 int localtime (scalar_t__*) ;
 char* nl_langinfo (int ) ;
 int stdout ;
 int strftime (char*,int,char const*,int ) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void
printtime(time_t ftime)
{
 char longstring[80];
 static time_t lnow;
 const char *format;
 static int d_first = -1;





 if (lnow == 0)
  lnow = time(((void*)0));


 if (ftime + ((365 / 2) * 86400) > lnow && ftime < lnow + ((365 / 2) * 86400))

  format = d_first ? "%e %b %R " : "%b %e %R ";
 else

  format = d_first ? "%e %b  %Y " : "%b %e  %Y ";
 strftime(longstring, sizeof(longstring), format, localtime(&ftime));
 fputs(longstring, stdout);
}
