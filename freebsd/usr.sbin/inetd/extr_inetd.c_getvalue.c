
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int strtol (char const*,char**,int ) ;
 int syslog (int ,char const*,char const*) ;

__attribute__((used)) static int
getvalue(const char *arg, int *value, const char *whine)
{
 int tmp;
 char *p;

 tmp = strtol(arg, &p, 0);
 if (tmp < 0 || *p) {
  syslog(LOG_ERR, whine, arg);
  return 1;
 }
 *value = tmp;
 return 0;
}
