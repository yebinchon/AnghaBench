
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_biba {int mb_flags; int mb_rangehigh; int mb_rangelow; int mb_effective; } ;


 int EINVAL ;
 int KASSERT (int,char*) ;
 int MAC_BIBA_FLAG_EFFECTIVE ;
 int MAC_BIBA_FLAG_RANGE ;
 int biba_parse_element (int *,char*) ;
 int biba_valid (struct mac_biba*) ;
 int bzero (struct mac_biba*,int) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
biba_parse(struct mac_biba *mb, char *string)
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
     ("biba_parse: range mismatch"));

 bzero(mb, sizeof(*mb));
 if (effective != ((void*)0)) {
  error = biba_parse_element(&mb->mb_effective, effective);
  if (error)
   return (error);
  mb->mb_flags |= MAC_BIBA_FLAG_EFFECTIVE;
 }

 if (rangelow != ((void*)0)) {
  error = biba_parse_element(&mb->mb_rangelow, rangelow);
  if (error)
   return (error);
  error = biba_parse_element(&mb->mb_rangehigh, rangehigh);
  if (error)
   return (error);
  mb->mb_flags |= MAC_BIBA_FLAG_RANGE;
 }

 error = biba_valid(mb);
 if (error)
  return (error);

 return (0);
}
