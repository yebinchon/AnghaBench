
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BUFSIZ ;
 scalar_t__ CONFIGVERS ;
 scalar_t__ MAJOR_VERS (scalar_t__) ;
 scalar_t__ atoi (char*) ;
 int badversion () ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * open_makefile_template () ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ versreq ;

__attribute__((used)) static void
checkversion(void)
{
 FILE *ifp;
 char line[BUFSIZ];

 ifp = open_makefile_template();
 while (fgets(line, BUFSIZ, ifp) != 0) {
  if (*line != '%')
   continue;
  if (strncmp(line, "%VERSREQ=", 9) != 0)
   continue;
  versreq = atoi(line + 9);
  if (MAJOR_VERS(versreq) == MAJOR_VERS(CONFIGVERS) &&
      versreq <= CONFIGVERS)
   continue;
  badversion();
 }
 fclose(ifp);
}
