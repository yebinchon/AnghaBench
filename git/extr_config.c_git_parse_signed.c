
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int intmax_t ;


 scalar_t__ EINVAL ;
 scalar_t__ ERANGE ;
 scalar_t__ errno ;
 int get_unit_factor (char*) ;
 int strtoimax (char const*,char**,int ) ;
 scalar_t__ unsigned_mult_overflows (int,int) ;

__attribute__((used)) static int git_parse_signed(const char *value, intmax_t *ret, intmax_t max)
{
 if (value && *value) {
  char *end;
  intmax_t val;
  uintmax_t uval;
  uintmax_t factor;

  errno = 0;
  val = strtoimax(value, &end, 0);
  if (errno == ERANGE)
   return 0;
  factor = get_unit_factor(end);
  if (!factor) {
   errno = EINVAL;
   return 0;
  }
  uval = val < 0 ? -val : val;
  if (unsigned_mult_overflows(factor, uval) ||
      factor * uval > max) {
   errno = ERANGE;
   return 0;
  }
  val *= factor;
  *ret = val;
  return 1;
 }
 errno = EINVAL;
 return 0;
}
