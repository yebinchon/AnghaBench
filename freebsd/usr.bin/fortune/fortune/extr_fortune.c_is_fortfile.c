
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int All_forts ;
 int DPRINTF (int,int ) ;
 int FALSE ;
 scalar_t__ Fortunes_only ;
 int Offend ;
 int R_OK ;
 int TRUE ;
 scalar_t__ WriteToDisk ;
 scalar_t__ access (char*,int ) ;
 char* copy (char const*,unsigned int) ;
 int free (char*) ;
 int stderr ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int
is_fortfile(const char *file, char **datp, char **posp, int check_for_offend)
{
 int i;
 const char *sp;
 char *datfile;
 static const char *suflist[] = {

  "dat", "pos", "c", "h", "p", "i", "f",
  "pas", "ftn", "ins.c", "ins,pas",
  "ins.ftn", "sml",
  ((void*)0)
 };

 DPRINTF(2, (stderr, "is_fortfile(%s) returns ", file));





 if (check_for_offend && !All_forts) {
  i = strlen(file);
  if (Offend ^ (file[i - 2] == '-' && file[i - 1] == 'o')) {
   DPRINTF(2, (stderr, "FALSE (offending file)\n"));
   return (FALSE);
  }
 }

 if ((sp = strrchr(file, '/')) == ((void*)0))
  sp = file;
 else
  sp++;
 if (*sp == '.') {
  DPRINTF(2, (stderr, "FALSE (file starts with '.')\n"));
  return (FALSE);
 }
 if (Fortunes_only && strncmp(sp, "fortunes", 8) != 0) {
  DPRINTF(2, (stderr, "FALSE (check fortunes only)\n"));
  return (FALSE);
 }
 if ((sp = strrchr(sp, '.')) != ((void*)0)) {
  sp++;
  for (i = 0; suflist[i] != ((void*)0); i++)
   if (strcmp(sp, suflist[i]) == 0) {
    DPRINTF(2, (stderr, "FALSE (file has suffix \".%s\")\n", sp));
    return (FALSE);
   }
 }

 datfile = copy(file, (unsigned int) (strlen(file) + 4));
 strcat(datfile, ".dat");
 if (access(datfile, R_OK) < 0) {
  DPRINTF(2, (stderr, "FALSE (no readable \".dat\" file)\n"));
  free(datfile);
  return (FALSE);
 }
 if (datp != ((void*)0))
  *datp = datfile;
 else
  free(datfile);
 if (posp != ((void*)0)) {
  if (WriteToDisk) {
   *posp = copy(file, (unsigned int) (strlen(file) + 4));
   strcat(*posp, ".pos");
  }
  else {
   *posp = ((void*)0);
  }
 }
 DPRINTF(2, (stderr, "TRUE\n"));

 return (TRUE);
}
