
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,char const*,...) ;
 int fprintf (int ,char*,char const*) ;
 int free (char*) ;
 int sscanf (char*,char*,int*,int*,char*) ;
 int stderr ;
 char* strdup (char const*) ;
 char* strrchr (char*,char) ;
 char* strstr (char*,char*) ;
 int system (char*) ;
 scalar_t__ using_vt ;
 scalar_t__ verbose ;
 scalar_t__ x11 ;

__attribute__((used)) static void
vidcontrol(const char *fnt)
{
 char *tmp, *p, *q, *cmd;
 char ch;
 int i;


 if (x11)
  return;

 if (using_vt) {
  asprintf(&cmd, "vidcontrol -f %s", fnt);
  system(cmd);
  free(cmd);
  return;
 }

 tmp = strdup(fnt);


 p = strrchr(tmp, '-');
 if (p && p[1] != '\0') {
  p++;

  if ((q = strstr(p, ".fnt")))
   *q = '\0';





  if (sscanf(p, "%dx%d%c", &i, &i, &ch) != 2)
   fprintf(stderr, "Which font size? %s\n", fnt);
  else {
   asprintf(&cmd, "vidcontrol -f %s %s", p, fnt);
   if (verbose)
    fprintf(stderr, "%s\n", cmd);
   system(cmd);
   free(cmd);
  }
 } else
  fprintf(stderr, "Which font size? %s\n", fnt);

 free(tmp);
}
