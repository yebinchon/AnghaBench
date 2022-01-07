
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ quad_t ;


 int getenv_quad (char const*,scalar_t__*) ;

int
getenv_uint(const char *name, unsigned int *data)
{
 quad_t tmp;
 int rval;

 rval = getenv_quad(name, &tmp);
 if (rval)
  *data = (unsigned int) tmp;
 return (rval);
}
