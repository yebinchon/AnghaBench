
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 int ENAMETOOLONG ;
 int M_TEMP ;
 int M_WAITOK ;
 scalar_t__ OFIOCMAXNAME ;
 int copyin (char const*,char*,int) ;
 char* malloc (int,int ,int ) ;

__attribute__((used)) static int
openfirm_getstr(int len, const char *user, char **cpp)
{
 int error;
 char *cp;


 if ((u_int)len > OFIOCMAXNAME)
  return (ENAMETOOLONG);

 *cpp = cp = malloc(len + 1, M_TEMP, M_WAITOK);
 error = copyin(user, cp, len);
 cp[len] = '\0';
 return (error);
}
