
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISDIGIT (char const) ;
 int strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static int
version_number(const char *base, const char *backup, size_t base_length)
{
 int version;
 const char *p;

 version = 0;
 if (!strncmp(base, backup, base_length) && ISDIGIT(backup[base_length])) {
  for (p = &backup[base_length]; ISDIGIT(*p); ++p)
   version = version * 10 + *p - '0';
  if (p[0] != '~' || p[1])
   version = 0;
 }
 return version;
}
