
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ quad_t ;
typedef int int64_t ;


 int getenv_quad (char const*,scalar_t__*) ;

int
getenv_int64(const char *name, int64_t *data)
{
 quad_t tmp;
 int64_t rval;

 rval = getenv_quad(name, &tmp);
 if (rval)
  *data = (int64_t) tmp;
 return (rval);
}
