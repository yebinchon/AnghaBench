
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long rlim_t ;
 long RLIM_INFINITY ;
 int errno ;
 scalar_t__ strcasecmp (char const*,char*) ;
 long strtoq (char const*,char**,int ) ;
 int usage () ;
 int warnx (char*,int,char const*) ;

__attribute__((used)) static rlim_t
resource_num(int which, int ch, const char *str)
{
    rlim_t res = RLIM_INFINITY;

    if (str != ((void*)0) &&
 !(strcasecmp(str, "inf") == 0 ||
   strcasecmp(str, "infinity") == 0 ||
   strcasecmp(str, "unlimit") == 0 ||
   strcasecmp(str, "unlimited") == 0)) {
 const char * s = str;
 char *e;

 switch (which) {
 case 141:
     errno = 0;
     res = 0;
     while (*s) {
  rlim_t tim = strtoq(s, &e, 0);
  if (e == ((void*)0) || e == s || errno)
      break;
  switch (*e++) {
  case 0:
      e--;
  default:
  case 's': case 'S':
      break;
  case 'm': case 'M':
      tim *= 60L;
      break;
  case 'h': case 'H':
      tim *= (60L * 60L);
      break;
  case 'd': case 'D':
      tim *= (60L * 60L * 24L);
      break;
  case 'w': case 'W':
      tim *= (60L * 60L * 24L * 7L);
      break;
  case 'y': case 'Y':
      tim *= (60L * 60L * 24L * 365L);
  }
  s = e;
  res += tim;
     }
     break;
 case 139:
 case 140:
 case 131:
 case 142:
 case 133:
 case 137:
 case 132:
 case 128:
 case 130:
     errno = 0;
     res = 0;
     while (*s) {
  rlim_t mult, tim = strtoq(s, &e, 0);
  if (e == ((void*)0) || e == s || errno)
      break;
  switch (*e++) {
  case 0:
      e--;
  default:
      mult = 1;
      break;
  case 'b': case 'B':
      mult = 512;
      break;
  case 'k': case 'K':
      mult = 1024;
      break;
  case 'm': case 'M':
      mult = 1024 * 1024;
      break;
  case 'g': case 'G':
      mult = 1024 * 1024 * 1024;
      break;
  case 't': case 'T':
      mult = 1024LL * 1024LL * 1024LL * 1024LL;
      break;
  }
  s = e;
  res += (tim * mult);
     }
     break;
 case 135:
 case 136:
 case 134:
 case 138:
 case 129:
     res = strtoq(s, &e, 0);
     s = e;
     break;
 }
 if (*s) {
     warnx("invalid value -%c `%s'", ch, str);
     usage();
 }
    }
    return res;
}
