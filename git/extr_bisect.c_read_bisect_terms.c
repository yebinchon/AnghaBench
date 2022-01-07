
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die_errno (int ,char const*) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 char* git_path_bisect_terms () ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_getline_lf (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;

void read_bisect_terms(const char **read_bad, const char **read_good)
{
 struct strbuf str = STRBUF_INIT;
 const char *filename = git_path_bisect_terms();
 FILE *fp = fopen(filename, "r");

 if (!fp) {
  if (errno == ENOENT) {
   *read_bad = "bad";
   *read_good = "good";
   return;
  } else {
   die_errno(_("could not read file '%s'"), filename);
  }
 } else {
  strbuf_getline_lf(&str, fp);
  *read_bad = strbuf_detach(&str, ((void*)0));
  strbuf_getline_lf(&str, fp);
  *read_good = strbuf_detach(&str, ((void*)0));
 }
 strbuf_release(&str);
 fclose(fp);
}
