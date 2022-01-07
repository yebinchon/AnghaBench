
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int EINVAL ;
 long UINT32_MAX ;
 char* str_to_number (char const*,long*,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int warnx (char*,char const*,char const*) ;

__attribute__((used)) static int
parse_val(const char *param, const char *args[], uint32_t *val)
{
 char *p;
 long l;

 if (strcmp(param, args[0]) != 0)
  return (EINVAL);

 p = str_to_number(args[1], &l, ((void*)0));
 if (*p || l < 0 || l > UINT32_MAX) {
  warnx("parameter \"%s\" has bad \"value\" %s", args[0], args[1]);
  return (EINVAL);
 }

 *val = (uint32_t)l;
 return (0);
}
