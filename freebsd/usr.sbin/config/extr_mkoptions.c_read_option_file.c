
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int genopt ;
typedef int FILE ;


 scalar_t__ EOF ;
 int MAXPATHLEN ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*,char*) ;
 int free (char*) ;
 char* get_word (int *) ;
 int insert_option (char const*,char*,char*) ;
 char* lower (char*) ;
 char* ns (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 int update_option (char*,char*,int) ;

__attribute__((used)) static int
read_option_file(const char *fname, int flags)
{
 FILE *fp;
 char *wd, *this, *val;
 char genopt[MAXPATHLEN];

 fp = fopen(fname, "r");
 if (fp == ((void*)0))
  return (0);
 while ((wd = get_word(fp)) != (char *)EOF) {
  if (wd == ((void*)0))
   continue;
  if (wd[0] == '#') {
   while (((wd = get_word(fp)) != (char *)EOF) && wd)
    continue;
   continue;
  }
  this = ns(wd);
  val = get_word(fp);
  if (val == (char *)EOF)
   return (1);
  if (val == ((void*)0)) {
   if (flags) {
    fprintf(stderr, "%s: compat file requires two"
        " words per line at %s\n", fname, this);
    exit(1);
   }
   char *s = ns(this);
   (void)snprintf(genopt, sizeof(genopt), "opt_%s.h",
       lower(s));
   val = genopt;
   free(s);
  }
  val = ns(val);
  if (flags == 0)
   insert_option(fname, this, val);
  else
   update_option(this, val, flags);
 }
 (void)fclose(fp);
 return (1);
}
