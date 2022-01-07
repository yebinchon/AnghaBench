
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int resource_find (int*,int *,char const*,int*,char const*,int *,int *,int *,int *,int *,int *,char const**) ;

int
resource_string_value(const char *name, int unit, const char *resname,
    const char **result)
{
 int error;
 const char *str;
 int line;

 line = 0;
 error = resource_find(&line, ((void*)0), name, &unit, resname, ((void*)0),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &str);
 if (error)
  return error;
 *result = str;
 return 0;
}
