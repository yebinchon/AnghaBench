
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_mls_element {int mme_level; int mme_compartments; int mme_type; } ;


 int EINVAL ;
 int MAC_MLS_BIT_SET (int,int ) ;
 int MAC_MLS_MAX_COMPARTMENTS ;
 int MAC_MLS_TYPE_EQUAL ;
 int MAC_MLS_TYPE_HIGH ;
 int MAC_MLS_TYPE_LEVEL ;
 int MAC_MLS_TYPE_LOW ;
 void* MAC_MLS_TYPE_UNDEF ;
 scalar_t__ strcmp (char*,char*) ;
 char* strsep (char**,char*) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int
mls_parse_element(struct mac_mls_element *element, char *string)
{
 char *compartment, *end, *level;
 int value;

 if (strcmp(string, "high") == 0 || strcmp(string, "hi") == 0) {
  element->mme_type = MAC_MLS_TYPE_HIGH;
  element->mme_level = MAC_MLS_TYPE_UNDEF;
 } else if (strcmp(string, "low") == 0 || strcmp(string, "lo") == 0) {
  element->mme_type = MAC_MLS_TYPE_LOW;
  element->mme_level = MAC_MLS_TYPE_UNDEF;
 } else if (strcmp(string, "equal") == 0 ||
     strcmp(string, "eq") == 0) {
  element->mme_type = MAC_MLS_TYPE_EQUAL;
  element->mme_level = MAC_MLS_TYPE_UNDEF;
 } else {
  element->mme_type = MAC_MLS_TYPE_LEVEL;




  level = strsep(&string, ":");
  value = strtol(level, &end, 10);
  if (end == level || *end != '\0')
   return (EINVAL);
  if (value < 0 || value > 65535)
   return (EINVAL);
  element->mme_level = value;





  if (string == ((void*)0))
   return (0);
  if (*string == '\0')
   return (0);

  while ((compartment = strsep(&string, "+")) != ((void*)0)) {
   value = strtol(compartment, &end, 10);
   if (compartment == end || *end != '\0')
    return (EINVAL);
   if (value < 1 || value > MAC_MLS_MAX_COMPARTMENTS)
    return (EINVAL);
   MAC_MLS_BIT_SET(value, element->mme_compartments);
  }
 }

 return (0);
}
