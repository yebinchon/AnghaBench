
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*,char const*) ;
 scalar_t__ errno ;
 int errx (int,char*,char const*) ;
 int strtoul (char const*,char**,int ) ;

__attribute__((used)) static int
get_int(const char *s)
{
 int val;
 char *ep;

 errno = 0;
 val = strtoul(s, &ep, 0);
 if (errno) {
  err(1, "%s", s);
 }
 if (*ep != '\0') {
  errx(1, "illegal number: %s", s);
 }
 return val;
}
