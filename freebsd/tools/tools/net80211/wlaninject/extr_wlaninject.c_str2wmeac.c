
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WME_AC_BE ;
 int WME_AC_BK ;
 int WME_AC_VI ;
 int WME_AC_VO ;
 scalar_t__ equal (char const*,char*) ;
 int errx (int,char*,char const*) ;

int str2wmeac(const char *ac)
{

 if ((strcasecmp(ac,"ac_be") == 0) || (strcasecmp(ac,"be") == 0))
  return WME_AC_BE;
 if ((strcasecmp(ac,"ac_bk") == 0) || (strcasecmp(ac,"bk") == 0))
  return WME_AC_BK;
 if ((strcasecmp(ac,"ac_vi") == 0) || (strcasecmp(ac,"vi") == 0))
  return WME_AC_VI;
 if ((strcasecmp(ac,"ac_vo") == 0) || (strcasecmp(ac,"vo") == 0))
  return WME_AC_VO;
 errx(1, "unknown wme access class %s", ac);

}
