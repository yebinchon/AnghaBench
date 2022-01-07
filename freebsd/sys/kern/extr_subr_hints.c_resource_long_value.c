
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFTYPE ;
 int resource_find (int*,int *,char const*,int*,char const*,int *,int *,int *,int *,int *,int *,char const**) ;
 unsigned long strtoul (char const*,char**,int ) ;

int
resource_long_value(const char *name, int unit, const char *resname,
    long *result)
{
 int error;
 const char *str;
 char *op;
 unsigned long val;
 int line;

 line = 0;
 error = resource_find(&line, ((void*)0), name, &unit, resname, ((void*)0),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &str);
 if (error)
  return error;
 if (*str == '\0')
  return EFTYPE;
 val = strtoul(str, &op, 0);
 if (*op != '\0')
  return EFTYPE;
 *result = val;
 return 0;
}
