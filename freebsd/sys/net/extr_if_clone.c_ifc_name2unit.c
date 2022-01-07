
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int INT_MAX ;

int
ifc_name2unit(const char *name, int *unit)
{
 const char *cp;
 int cutoff = INT_MAX / 10;
 int cutlim = INT_MAX % 10;

 for (cp = name; *cp != '\0' && (*cp < '0' || *cp > '9'); cp++);
 if (*cp == '\0') {
  *unit = -1;
 } else if (cp[0] == '0' && cp[1] != '\0') {

  return (EINVAL);
 } else {
  for (*unit = 0; *cp != '\0'; cp++) {
   if (*cp < '0' || *cp > '9') {

    return (EINVAL);
   }
   if (*unit > cutoff ||
       (*unit == cutoff && *cp - '0' > cutlim))
    return (EINVAL);
   *unit = (*unit * 10) + (*cp - '0');
  }
 }

 return (0);
}
