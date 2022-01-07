
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; char* srcdir; char* realsrcdir; char* objdir; int goterror; int objs; scalar_t__ ident; } ;
typedef TYPE_1__ prog_t ;
typedef int path ;
typedef int FILE ;


 int MAXLINELEN ;
 int MAXPATHLEN ;
 char* dir_search (char*) ;
 int errx (int,char*,char*) ;
 int fgets (char*,int,int *) ;
 int fillin_program_objs (TYPE_1__*,char*) ;
 scalar_t__ genident (char*) ;
 char* getenv (char*) ;
 int infilename ;
 scalar_t__ is_dir (char*) ;
 scalar_t__ is_nonempty_file (char*) ;
 int makeobj ;
 char* objprefix ;
 int out_of_memory () ;
 scalar_t__ pclose (int *) ;
 int * popen (char*,char*) ;
 int snprintf (char*,int,char*,char*,...) ;
 int status (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 void* strdup (char*) ;
 scalar_t__ verbose ;
 int warnx (char*,char*,char*,...) ;

void
fillin_program(prog_t *p)
{
 char path[MAXPATHLEN];
 char line[MAXLINELEN];
 FILE *f;

 snprintf(line, MAXLINELEN, "filling in parms for %s", p->name);
 status(line);

 if (!p->ident)
  p->ident = genident(p->name);


 if (!p->srcdir) {
  p->srcdir = dir_search(p->name);
 }


 if (p->srcdir) {
  snprintf(line, MAXLINELEN, "cd %s && echo -n `/bin/pwd`",
      p->srcdir);
  f = popen(line,"r");
  if (!f)
   errx(1, "Can't execute: %s\n", line);

  path[0] = '\0';
  fgets(path, sizeof path, f);
  if (pclose(f))
   errx(1, "Can't execute: %s\n", line);

  if (!*path)
   errx(1, "Can't perform pwd on: %s\n", p->srcdir);

  p->realsrcdir = strdup(path);
 }





 if (!makeobj && !p->objdir && p->srcdir) {
  char *auto_obj;

  auto_obj = ((void*)0);
  snprintf(line, sizeof line, "%s/%s", objprefix, p->realsrcdir);
  if (is_dir(line) ||
      ((auto_obj = getenv("MK_AUTO_OBJ")) != ((void*)0) &&
      strcmp(auto_obj, "yes") == 0)) {
   if ((p->objdir = strdup(line)) == ((void*)0))
   out_of_memory();
  } else
   p->objdir = p->realsrcdir;
 }





 snprintf(path, sizeof(path), "Makefile.%s", p->name);
 if (is_nonempty_file(path)) {
  snprintf(line, MAXLINELEN, "Using %s for %s", path, p->name);
  status(line);
 } else
  if (p->srcdir)
   snprintf(path, sizeof(path), "%s/Makefile", p->srcdir);
 if (!p->objs && p->srcdir && is_nonempty_file(path))
  fillin_program_objs(p, path);

 if (!p->srcdir && !p->objdir && verbose)
  warnx("%s: %s: %s",
      "warning: could not find source directory",
      infilename, p->name);
 if (!p->objs && verbose)
  warnx("%s: %s: warning: could not find any .o files",
      infilename, p->name);

 if ((!p->srcdir || !p->objdir) && !p->objs)
  p->goterror = 1;
}
