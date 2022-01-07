
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ quad_t ;


 int getenv_quad (char const*,scalar_t__*) ;

int
getenv_uint64(const char *name, uint64_t *data)
{
 quad_t tmp;
 uint64_t rval;

 rval = getenv_quad(name, &tmp);
 if (rval)
  *data = (uint64_t) tmp;
 return (rval);
}
