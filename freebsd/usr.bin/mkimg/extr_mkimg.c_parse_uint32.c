
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;


 int EINVAL ;
 scalar_t__ UINT_MAX ;
 int errno ;
 int expand_number (char const*,scalar_t__*) ;

__attribute__((used)) static int
parse_uint32(uint32_t *valp, uint32_t min, uint32_t max, const char *arg)
{
 uint64_t val;

 if (expand_number(arg, &val) == -1)
  return (errno);
 if (val > UINT_MAX || val < (uint64_t)min || val > (uint64_t)max)
  return (EINVAL);
 *valp = (uint32_t)val;
 return (0);
}
