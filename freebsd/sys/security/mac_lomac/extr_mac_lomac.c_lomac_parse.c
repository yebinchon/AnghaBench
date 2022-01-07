
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_lomac {int ml_flags; int ml_rangehigh; int ml_rangelow; int ml_auxsingle; int ml_single; } ;


 int EINVAL ;
 int KASSERT (int,char*) ;
 int MAC_LOMAC_FLAG_AUX ;
 int MAC_LOMAC_FLAG_RANGE ;
 int MAC_LOMAC_FLAG_SINGLE ;
 int bzero (struct mac_lomac*,int) ;
 int lomac_parse_element (int *,char*) ;
 int lomac_valid (struct mac_lomac*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
lomac_parse(struct mac_lomac *ml, char *string)
{
 char *range, *rangeend, *rangehigh, *rangelow, *single, *auxsingle,
     *auxsingleend;
 int error;


 single = string;
 range = strchr(string, '(');
 if (range == single)
  single = ((void*)0);
 auxsingle = strchr(string, '[');
 if (auxsingle == single)
  single = ((void*)0);
 if (range != ((void*)0) && auxsingle != ((void*)0))
  return (EINVAL);
 rangelow = rangehigh = ((void*)0);
 if (range != ((void*)0)) {

  *range = '\0';
  range++;
  rangelow = range;
  rangehigh = strchr(rangelow, '-');
  if (rangehigh == ((void*)0))
   return (EINVAL);
  rangehigh++;
  if (*rangelow == '\0' || *rangehigh == '\0')
   return (EINVAL);
  rangeend = strchr(rangehigh, ')');
  if (rangeend == ((void*)0))
   return (EINVAL);
  if (*(rangeend + 1) != '\0')
   return (EINVAL);

  *(rangehigh - 1) = '\0';
  *rangeend = '\0';
 }
 KASSERT((rangelow != ((void*)0) && rangehigh != ((void*)0)) ||
     (rangelow == ((void*)0) && rangehigh == ((void*)0)),
     ("lomac_internalize_label: range mismatch"));
 if (auxsingle != ((void*)0)) {

  *auxsingle = '\0';
  auxsingle++;
  auxsingleend = strchr(auxsingle, ']');
  if (auxsingleend == ((void*)0))
   return (EINVAL);
  if (*(auxsingleend + 1) != '\0')
   return (EINVAL);

  *auxsingleend = '\0';
 }

 bzero(ml, sizeof(*ml));
 if (single != ((void*)0)) {
  error = lomac_parse_element(&ml->ml_single, single);
  if (error)
   return (error);
  ml->ml_flags |= MAC_LOMAC_FLAG_SINGLE;
 }

 if (auxsingle != ((void*)0)) {
  error = lomac_parse_element(&ml->ml_auxsingle, auxsingle);
  if (error)
   return (error);
  ml->ml_flags |= MAC_LOMAC_FLAG_AUX;
 }

 if (rangelow != ((void*)0)) {
  error = lomac_parse_element(&ml->ml_rangelow, rangelow);
  if (error)
   return (error);
  error = lomac_parse_element(&ml->ml_rangehigh, rangehigh);
  if (error)
   return (error);
  ml->ml_flags |= MAC_LOMAC_FLAG_RANGE;
 }

 error = lomac_valid(ml);
 if (error)
  return (error);

 return (0);
}
