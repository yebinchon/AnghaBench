
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_isdst; int tm_sec; } ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;


 int errx (int,char*) ;
 scalar_t__ isdigit (unsigned char) ;
 int mktime (struct tm*) ;
 char* strchr (char const*,char) ;
 char* strptime (char const*,char const*,struct tm*) ;
 int timegm (struct tm*) ;

__attribute__((used)) static void
stime_darg(const char *arg, struct timespec *tvp)
{
 struct tm t = { .tm_sec = 0 };
 const char *fmt, *colon;
 char *p;
 int val, isutc = 0;

 tvp[0].tv_nsec = 0;
 t.tm_isdst = -1;
 colon = strchr(arg, ':');
 if (colon == ((void*)0) || strchr(colon + 1, ':') == ((void*)0))
  goto bad;
 fmt = strchr(arg, 'T') != ((void*)0) ? "%Y-%m-%dT%H:%M:%S" :
     "%Y-%m-%d %H:%M:%S";
 p = strptime(arg, fmt, &t);
 if (p == ((void*)0))
  goto bad;

 if ((*p == '.' || *p == ',') && isdigit((unsigned char)p[1])) {
  p++;
  val = 100000000;
  while (isdigit((unsigned char)*p)) {
   tvp[0].tv_nsec += val * (*p - '0');
   p++;
   val /= 10;
  }
 }
 if (*p == 'Z') {
  isutc = 1;
  p++;
 }
 if (*p != '\0')
  goto bad;

 tvp[0].tv_sec = isutc ? timegm(&t) : mktime(&t);

 tvp[1] = tvp[0];
 return;

bad:
 errx(1, "out of range or illegal time specification: YYYY-MM-DDThh:mm:SS[.frac][tz]");
}
