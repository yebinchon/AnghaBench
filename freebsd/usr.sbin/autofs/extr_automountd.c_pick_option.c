
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* calloc (int,int) ;
 char* checked_strdup (char*) ;
 int free (char*) ;
 int log_err (int,char*) ;
 int strcat (char*,char*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static char *
pick_option(const char *option, char **optionsp)
{
 char *tofree, *pair, *newoptions;
 char *picked = ((void*)0);
 bool first = 1;

 tofree = *optionsp;

 newoptions = calloc(1, strlen(*optionsp) + 1);
 if (newoptions == ((void*)0))
  log_err(1, "calloc");

 while ((pair = strsep(optionsp, ",")) != ((void*)0)) {



  if (strncmp(pair, option, strlen(option)) == 0) {
   picked = checked_strdup(pair + strlen(option));
  } else {
   if (first == 0)
    strcat(newoptions, ",");
   else
    first = 0;
   strcat(newoptions, pair);
  }
 }

 free(tofree);
 *optionsp = newoptions;

 return (picked);
}
