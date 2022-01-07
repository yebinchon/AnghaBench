
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int line ;
typedef int filename ;
typedef int cap_rights_t ;
struct TYPE_4__ {void* prefixval; void* prefixname; } ;
struct TYPE_3__ {void* uval; void* uname; } ;
typedef int FILE ;


 int CAP_FSTAT ;
 int CAP_READ ;
 size_t MAXPREFIXES ;
 size_t MAXUNITS ;
 int SEPARATOR ;
 char* UNITSFILE ;
 int cap_rights_init (int *,int ,int ) ;
 scalar_t__ caph_rights_limit (int ,int *) ;
 void* dupstr (char*) ;
 int err (int,char*) ;
 int errx (int,char*,char const*) ;
 int fclose (int *) ;
 int feof (int *) ;
 int fgets (char*,int,int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char*) ;
 char* getenv (char*) ;
 size_t prefixcount ;
 TYPE_2__* prefixtable ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strcmp (void*,char*) ;
 int strcspn (char*,char*) ;
 int strlen (char*) ;
 int strspn (char*,char*) ;
 char* strtok (char*,int ) ;
 size_t unitcount ;
 TYPE_1__* unittable ;
 int warnx (char*,...) ;

__attribute__((used)) static void
readunits(const char *userfile)
{
 FILE *unitfile;
 char line[512], *lineptr;
 int len, linenum, i;
 cap_rights_t unitfilerights;

 unitcount = 0;
 linenum = 0;

 if (userfile) {
  unitfile = fopen(userfile, "r");
  if (!unitfile)
   errx(1, "unable to open units file '%s'", userfile);
 }
 else {
  unitfile = fopen(UNITSFILE, "r");
  if (!unitfile) {
   char *direc, *env;
   char filename[1000];

   env = getenv("PATH");
   if (env) {
    direc = strtok(env, SEPARATOR);
    while (direc) {
     snprintf(filename, sizeof(filename),
         "%s/%s", direc, UNITSFILE);
     unitfile = fopen(filename, "rt");
     if (unitfile)
      break;
     direc = strtok(((void*)0), SEPARATOR);
    }
   }
   if (!unitfile)
    errx(1, "can't find units file '%s'", UNITSFILE);
  }
 }
 cap_rights_init(&unitfilerights, CAP_READ, CAP_FSTAT);
 if (caph_rights_limit(fileno(unitfile), &unitfilerights) < 0)
  err(1, "cap_rights_limit() failed");
 while (!feof(unitfile)) {
  if (!fgets(line, sizeof(line), unitfile))
   break;
  linenum++;
  lineptr = line;
  if (*lineptr == '/' || *lineptr == '#')
   continue;
  lineptr += strspn(lineptr, " \n\t");
  len = strcspn(lineptr, " \n\t");
  lineptr[len] = 0;
  if (!strlen(lineptr))
   continue;
  if (lineptr[strlen(lineptr) - 1] == '-') {
   if (prefixcount == MAXPREFIXES) {
    warnx("memory for prefixes exceeded in line %d", linenum);
    continue;
   }
   lineptr[strlen(lineptr) - 1] = 0;
   prefixtable[prefixcount].prefixname = dupstr(lineptr);
   for (i = 0; i < prefixcount; i++)
    if (!strcmp(prefixtable[i].prefixname, lineptr)) {
     warnx("redefinition of prefix '%s' on line %d ignored",
         lineptr, linenum);
     continue;
    }
   lineptr += len + 1;
   lineptr += strspn(lineptr, " \n\t");
   len = strcspn(lineptr, "\n\t");
   if (len == 0) {
    warnx("unexpected end of prefix on line %d",
        linenum);
    continue;
   }
   lineptr[len] = 0;
   prefixtable[prefixcount++].prefixval = dupstr(lineptr);
  }
  else {
   if (unitcount == MAXUNITS) {
    warnx("memory for units exceeded in line %d", linenum);
    continue;
   }
   unittable[unitcount].uname = dupstr(lineptr);
   for (i = 0; i < unitcount; i++)
    if (!strcmp(unittable[i].uname, lineptr)) {
     warnx("redefinition of unit '%s' on line %d ignored",
         lineptr, linenum);
     continue;
    }
   lineptr += len + 1;
   lineptr += strspn(lineptr, " \n\t");
   if (!strlen(lineptr)) {
    warnx("unexpected end of unit on line %d",
        linenum);
    continue;
   }
   len = strcspn(lineptr, "\n\t");
   lineptr[len] = 0;
   unittable[unitcount++].uval = dupstr(lineptr);
  }
 }
 fclose(unitfile);
}
