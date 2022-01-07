
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int varname ;


 int ENAMETOOLONG ;
 int kern_unsetenv (char*) ;
 int memcpy (char*,char const*,size_t) ;
 int resource_find (int*,int *,char const*,int*,char const*,int *,char const**,int *,int *,int *,int *,char const**) ;
 int strlen (char*) ;

int
resource_unset_value(const char *name, int unit, const char *resname)
{
 char varname[128];
 const char *retname, *retvalue;
 int error, line;
 size_t len;

 line = 0;
 error = resource_find(&line, ((void*)0), name, &unit, resname, ((void*)0),
     &retname, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &retvalue);
 if (error)
  return (error);

 retname -= strlen("hint.");
 len = retvalue - retname - 1;
 if (len > sizeof(varname) - 1)
  return (ENAMETOOLONG);
 memcpy(varname, retname, len);
 varname[len] = '\0';
 return (kern_unsetenv(varname));
}
