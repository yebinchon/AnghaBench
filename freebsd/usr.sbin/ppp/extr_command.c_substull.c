
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,unsigned long long) ;
 char* subst (char*,char const*,char*) ;

__attribute__((used)) static char *
substull(char *tgt, const char *oldstr, unsigned long long ull)
{
  char buf[21];

  snprintf(buf, sizeof buf, "%llu", ull);

  return subst(tgt, oldstr, buf);
}
