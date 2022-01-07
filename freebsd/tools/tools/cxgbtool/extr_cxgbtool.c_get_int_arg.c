
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int strtoul (char const*,char**,int ) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
get_int_arg(const char *s, uint32_t *valp)
{
 char *p;

 *valp = strtoul(s, &p, 0);
 if (*p) {
  warnx("bad parameter \"%s\"", s);
  return -1;
 }
 return 0;
}
