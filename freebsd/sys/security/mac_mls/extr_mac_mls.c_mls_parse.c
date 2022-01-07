
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_mls {int mm_flags; int mm_rangehigh; int mm_rangelow; int mm_effective; } ;


 int EINVAL ;
 int KASSERT (int,char*) ;
 int MAC_MLS_FLAG_EFFECTIVE ;
 int MAC_MLS_FLAG_RANGE ;
 int bzero (struct mac_mls*,int) ;
 int mls_parse_element (int *,char*) ;
 int mls_valid (struct mac_mls*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
mls_parse(struct mac_mls *mm, char *string)
{
 char *rangehigh, *rangelow, *effective;
 int error;

 effective = strsep(&string, "(");
 if (*effective == '\0')
  effective = ((void*)0);

 if (string != ((void*)0)) {
  rangelow = strsep(&string, "-");
  if (string == ((void*)0))
   return (EINVAL);
  rangehigh = strsep(&string, ")");
  if (string == ((void*)0))
   return (EINVAL);
  if (*string != '\0')
   return (EINVAL);
 } else {
  rangelow = ((void*)0);
  rangehigh = ((void*)0);
 }

 KASSERT((rangelow != ((void*)0) && rangehigh != ((void*)0)) ||
     (rangelow == ((void*)0) && rangehigh == ((void*)0)),
     ("mls_parse: range mismatch"));

 bzero(mm, sizeof(*mm));
 if (effective != ((void*)0)) {
  error = mls_parse_element(&mm->mm_effective, effective);
  if (error)
   return (error);
  mm->mm_flags |= MAC_MLS_FLAG_EFFECTIVE;
 }

 if (rangelow != ((void*)0)) {
  error = mls_parse_element(&mm->mm_rangelow, rangelow);
  if (error)
   return (error);
  error = mls_parse_element(&mm->mm_rangehigh, rangehigh);
  if (error)
   return (error);
  mm->mm_flags |= MAC_MLS_FLAG_RANGE;
 }

 error = mls_valid(mm);
 if (error)
  return (error);

 return (0);
}
