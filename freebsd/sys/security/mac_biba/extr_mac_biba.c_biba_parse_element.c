
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_biba_element {int mbe_grade; int mbe_compartments; int mbe_type; } ;


 int EINVAL ;
 int MAC_BIBA_BIT_SET (int,int ) ;
 int MAC_BIBA_MAX_COMPARTMENTS ;
 int MAC_BIBA_TYPE_EQUAL ;
 int MAC_BIBA_TYPE_GRADE ;
 int MAC_BIBA_TYPE_HIGH ;
 int MAC_BIBA_TYPE_LOW ;
 void* MAC_BIBA_TYPE_UNDEF ;
 scalar_t__ strcmp (char*,char*) ;
 char* strsep (char**,char*) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int
biba_parse_element(struct mac_biba_element *element, char *string)
{
 char *compartment, *end, *grade;
 int value;

 if (strcmp(string, "high") == 0 || strcmp(string, "hi") == 0) {
  element->mbe_type = MAC_BIBA_TYPE_HIGH;
  element->mbe_grade = MAC_BIBA_TYPE_UNDEF;
 } else if (strcmp(string, "low") == 0 || strcmp(string, "lo") == 0) {
  element->mbe_type = MAC_BIBA_TYPE_LOW;
  element->mbe_grade = MAC_BIBA_TYPE_UNDEF;
 } else if (strcmp(string, "equal") == 0 ||
     strcmp(string, "eq") == 0) {
  element->mbe_type = MAC_BIBA_TYPE_EQUAL;
  element->mbe_grade = MAC_BIBA_TYPE_UNDEF;
 } else {
  element->mbe_type = MAC_BIBA_TYPE_GRADE;




  grade = strsep(&string, ":");
  value = strtol(grade, &end, 10);
  if (end == grade || *end != '\0')
   return (EINVAL);
  if (value < 0 || value > 65535)
   return (EINVAL);
  element->mbe_grade = value;





  if (string == ((void*)0))
   return (0);
  if (*string == '\0')
   return (0);

  while ((compartment = strsep(&string, "+")) != ((void*)0)) {
   value = strtol(compartment, &end, 10);
   if (compartment == end || *end != '\0')
    return (EINVAL);
   if (value < 1 || value > MAC_BIBA_MAX_COMPARTMENTS)
    return (EINVAL);
   MAC_BIBA_BIT_SET(value, element->mbe_compartments);
  }
 }

 return (0);
}
