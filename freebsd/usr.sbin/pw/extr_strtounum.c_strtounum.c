
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;


 scalar_t__ EINVAL ;
 scalar_t__ ERANGE ;
 scalar_t__ errno ;
 scalar_t__ strtoumax (char const*,char**,int) ;

uintmax_t
strtounum(const char * __restrict np, uintmax_t minval, uintmax_t maxval,
    const char ** __restrict errpp)
{
 char *endp;
 uintmax_t ret;

 *errpp = ((void*)0);
 if (minval > maxval) {
  errno = EINVAL;
  if (errpp != ((void*)0))
   *errpp = "invalid";
  return (0);
 }
 errno = 0;
 ret = strtoumax(np, &endp, 10);
 if (endp == np || *endp != '\0') {
  errno = EINVAL;
  if (errpp != ((void*)0))
   *errpp = "invalid";
  return (0);
 }
 if (ret < minval) {
  errno = ERANGE;
  if (errpp != ((void*)0))
   *errpp = "too small";
  return (0);
 }
 if (errno == ERANGE || ret > maxval) {
  errno = ERANGE;
  if (errpp != ((void*)0))
   *errpp = "too large";
  return (0);
 }
 return (ret);
}
