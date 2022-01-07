
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int sscanf (char*,char*,int*,int*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 char* sysconfig ;

__attribute__((used)) static char *
get_font(void)
{
 char line[256], buf[20];
 char *fnt = ((void*)0);

 FILE *fp = fopen(sysconfig, "r");
 if (fp) {
  while (fgets(line, sizeof(line), fp)) {
   int a, b, matches;

   if (line[0] == '#')
    continue;

   matches = sscanf(line,
       " font%dx%d = \"%20[-.0-9a-zA-Z_]",
       &a, &b, buf);
   if (matches==3) {
    if (strcmp(buf, "NO")) {
     if (fnt)
      free(fnt);
     fnt = strdup(buf);
    }
   }
  }
  fclose(fp);
 } else
  fprintf(stderr, "Could not open %s for reading\n", sysconfig);

 return fnt;
}
