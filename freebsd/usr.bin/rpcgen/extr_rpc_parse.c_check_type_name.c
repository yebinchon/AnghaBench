
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int ** reserved_types ;
 int ** reserved_words ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ strcmp (char const*,int *) ;

__attribute__((used)) static void
check_type_name(const char *name, int new_type)
{
 int i;
 char tmp[100];

 for (i = 0; reserved_words[i] != ((void*)0); i++) {
  if (strcmp(name, reserved_words[i]) == 0) {
   sprintf(tmp,
    "illegal (reserved) name :\'%s\' in type definition",
    name);
   error(tmp);
  }
 }
 if (new_type) {
  for (i = 0; reserved_types[i] != ((void*)0); i++) {
   if (strcmp(name, reserved_types[i]) == 0) {
    sprintf(tmp,
     "illegal (reserved) name :\'%s\' in type definition",
     name);
    error(tmp);
   }
  }
 }
}
