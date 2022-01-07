
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static unsigned parse_score(const char *arg)
{
 char *end;
 unsigned long score = strtoul(arg, &end, 10);
 if (*end)
  return 0;
 return score;
}
