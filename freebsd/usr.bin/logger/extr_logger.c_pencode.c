
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_FACMASK ;
 int LOG_PRIMASK ;
 int decode (char*,int ) ;
 int errx (int,char*,char*) ;
 int facilitynames ;
 int prioritynames ;

__attribute__((used)) static int
pencode(char *s)
{
 char *save;
 int fac, lev;

 for (save = s; *s && *s != '.'; ++s);
 if (*s) {
  *s = '\0';
  fac = decode(save, facilitynames);
  if (fac < 0)
   errx(1, "unknown facility name: %s", save);
  *s++ = '.';
 }
 else {
  fac = 0;
  s = save;
 }
 lev = decode(s, prioritynames);
 if (lev < 0)
  errx(1, "unknown priority name: %s", save);
 return ((lev & LOG_PRIMASK) | (fac & LOG_FACMASK));
}
