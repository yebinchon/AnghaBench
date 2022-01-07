
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 scalar_t__ approxidate (char const*) ;
 int unpack_unreachable ;
 scalar_t__ unpack_unreachable_expiration ;

__attribute__((used)) static int option_parse_unpack_unreachable(const struct option *opt,
        const char *arg, int unset)
{
 if (unset) {
  unpack_unreachable = 0;
  unpack_unreachable_expiration = 0;
 }
 else {
  unpack_unreachable = 1;
  if (arg)
   unpack_unreachable_expiration = approxidate(arg);
 }
 return 0;
}
