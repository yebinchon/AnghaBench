
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int errx (int,char*) ;
 double strtod (char const*,char**) ;

__attribute__((used)) static double
parse_duration(const char *duration)
{
 double ret;
 char *end;

 ret = strtod(duration, &end);
 if (ret == 0 && end == duration)
  errx(125, "invalid duration");

 if (end == ((void*)0) || *end == '\0')
  return (ret);

 if (end != ((void*)0) && *(end + 1) != '\0')
  errx(EX_USAGE, "invalid duration");

 switch (*end) {
 case 's':
  break;
 case 'm':
  ret *= 60;
  break;
 case 'h':
  ret *= 60 * 60;
  break;
 case 'd':
  ret *= 60 * 60 * 24;
  break;
 default:
  errx(125, "invalid duration");
 }

 if (ret < 0 || ret >= 100000000UL)
  errx(125, "invalid duration");

 return (ret);
}
