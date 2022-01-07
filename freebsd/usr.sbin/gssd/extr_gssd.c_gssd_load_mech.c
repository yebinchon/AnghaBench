
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int _PATH_GSS_MECH ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 char* getprogname () ;
 scalar_t__ isspace (char) ;
 scalar_t__ kldload (char*) ;
 scalar_t__ modfind (char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static void
gssd_load_mech(void)
{
 FILE *fp;
 char buf[256];
 char *p;
 char *name, *oid, *lib, *kobj;

 fp = fopen(_PATH_GSS_MECH, "r");
 if (!fp)
  return;

 while (fgets(buf, sizeof(buf), fp)) {
  if (*buf == '#')
   continue;
  p = buf;
  name = strsep(&p, "\t\n ");
  if (p) while (isspace(*p)) p++;
  oid = strsep(&p, "\t\n ");
  if (p) while (isspace(*p)) p++;
  lib = strsep(&p, "\t\n ");
  if (p) while (isspace(*p)) p++;
  kobj = strsep(&p, "\t\n ");
  if (!name || !oid || !lib || !kobj)
   continue;

  if (strcmp(kobj, "-")) {




   if (modfind(kobj) < 0) {
    if (kldload(kobj) < 0) {
     fprintf(stderr,
   "%s: can't find or load kernel module %s for %s\n",
         getprogname(), kobj, name);
    }
   }
  }
 }
 fclose(fp);
}
