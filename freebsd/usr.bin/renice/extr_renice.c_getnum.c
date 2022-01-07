
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 long INT_MAX ;
 long INT_MIN ;
 scalar_t__ errno ;
 long strtol (char const*,char**,int) ;
 int warnx (char*,char const*,char const*) ;

__attribute__((used)) static int
getnum(const char *com, const char *str, int *val)
{
 long v;
 char *ep;

 errno = 0;
 v = strtol(str, &ep, 10);
 if (v < INT_MIN || v > INT_MAX || errno == ERANGE) {
  warnx("%s argument %s is out of range.", com, str);
  return (1);
 }
 if (ep == str || *ep != '\0' || errno != 0) {
  warnx("Bad %s argument: %s.", com, str);
  return (1);
 }

 *val = (int)v;
 return (0);
}
