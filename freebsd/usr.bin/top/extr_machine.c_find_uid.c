
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;


 size_t TOP_MAX_UIDS ;

__attribute__((used)) static int
find_uid(uid_t needle, int *haystack)
{
 size_t i = 0;

 for (; i < TOP_MAX_UIDS; ++i)
  if ((uid_t)haystack[i] == needle)
   return 1;
 return (0);
}
