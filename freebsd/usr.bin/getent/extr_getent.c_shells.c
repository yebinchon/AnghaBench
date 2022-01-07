
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RV_NOTFOUND ;
 int RV_OK ;
 int SHELLSPRINT ;
 int assert (int) ;
 int endusershell () ;
 char* getusershell () ;
 int setusershell () ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
shells(int argc, char *argv[])
{
 const char *sh;
 int i, rv;

 assert(argc > 1);
 assert(argv != ((void*)0));



 setusershell();
 rv = RV_OK;
 if (argc == 2) {
  while ((sh = getusershell()) != ((void*)0))
   printf("%s\n", sh);
 } else {
  for (i = 2; i < argc; i++) {
   setusershell();
   while ((sh = getusershell()) != ((void*)0)) {
    if (strcmp(sh, argv[i]) == 0) {
     printf("%s\n", sh);
     break;
    }
   }
   if (sh == ((void*)0)) {
    rv = RV_NOTFOUND;
    break;
   }
  }
 }
 endusershell();
 return rv;
}
