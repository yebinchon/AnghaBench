
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct argv_array {int dummy; } ;
typedef int FILE ;


 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die (int ,char const*,int ) ;
 int fclose (int *) ;
 char* git_path_bisect_names () ;
 scalar_t__ sq_dequote_to_argv_array (int ,struct argv_array*) ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_trim (struct strbuf*) ;
 int * xfopen (char const*,char*) ;

__attribute__((used)) static void read_bisect_paths(struct argv_array *array)
{
 struct strbuf str = STRBUF_INIT;
 const char *filename = git_path_bisect_names();
 FILE *fp = xfopen(filename, "r");

 while (strbuf_getline_lf(&str, fp) != EOF) {
  strbuf_trim(&str);
  if (sq_dequote_to_argv_array(str.buf, array))
   die(_("Badly quoted content in file '%s': %s"),
       filename, str.buf);
 }

 strbuf_release(&str);
 fclose(fp);
}
