
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,long) ;
 char* subst (char*,char const*,char*) ;

__attribute__((used)) static char *
substlong(char *tgt, const char *oldstr, long l)
{
  char buf[23];

  snprintf(buf, sizeof buf, "%ld", l);

  return subst(tgt, oldstr, buf);
}
