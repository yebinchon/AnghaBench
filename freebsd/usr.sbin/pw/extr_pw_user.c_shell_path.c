
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int shellpath ;
typedef int paths ;


 int EX_CONFIG ;
 int EX_OSFILE ;
 int X_OK ;
 int _UC_MAXLINE ;
 int _UC_MAXSHELLS ;
 scalar_t__ access (char*,int ) ;
 int errx (int ,char*,...) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strlcpy (char*,char const*,int) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static char *
shell_path(char const * path, char *shells[], char *sh)
{
 if (sh != ((void*)0) && (*sh == '/' || *sh == '\0'))
  return sh;
 else {
  char *p;
  char paths[_UC_MAXLINE];




  strlcpy(paths, path, sizeof(paths));
  for (p = strtok(paths, ": \t\r\n"); p != ((void*)0); p = strtok(((void*)0), ": \t\r\n")) {
   int i;
   static char shellpath[256];

   if (sh != ((void*)0)) {
    snprintf(shellpath, sizeof(shellpath), "%s/%s", p, sh);
    if (access(shellpath, X_OK) == 0)
     return shellpath;
   } else
    for (i = 0; i < _UC_MAXSHELLS && shells[i] != ((void*)0); i++) {
     snprintf(shellpath, sizeof(shellpath), "%s/%s", p, shells[i]);
     if (access(shellpath, X_OK) == 0)
      return shellpath;
    }
  }
  if (sh == ((void*)0))
   errx(EX_OSFILE, "can't find shell `%s' in shell paths", sh);
  errx(EX_CONFIG, "no default shell available or defined");
  return ((void*)0);
 }
}
