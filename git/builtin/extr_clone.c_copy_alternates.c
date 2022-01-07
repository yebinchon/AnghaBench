
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;
typedef int FILE ;


 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 int add_to_alternates_file (char*) ;
 int fclose (int *) ;
 int free (char*) ;
 scalar_t__ is_absolute_path (char*) ;
 char* mkpathdup (char*,char const*,char*) ;
 int normalize_path_copy (char*,char*) ;
 scalar_t__ strbuf_getline (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int warning (char*,char const*,char*) ;
 int * xfopen (char*,char*) ;

__attribute__((used)) static void copy_alternates(struct strbuf *src, const char *src_repo)
{
 FILE *in = xfopen(src->buf, "r");
 struct strbuf line = STRBUF_INIT;

 while (strbuf_getline(&line, in) != EOF) {
  char *abs_path;
  if (!line.len || line.buf[0] == '#')
   continue;
  if (is_absolute_path(line.buf)) {
   add_to_alternates_file(line.buf);
   continue;
  }
  abs_path = mkpathdup("%s/objects/%s", src_repo, line.buf);
  if (!normalize_path_copy(abs_path, abs_path))
   add_to_alternates_file(abs_path);
  else
   warning("skipping invalid relative alternate: %s/%s",
    src_repo, line.buf);
  free(abs_path);
 }
 strbuf_release(&line);
 fclose(in);
}
