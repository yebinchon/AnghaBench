
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct argv_array {int argv; } ;
struct am_state {int dummy; } ;
typedef int FILE ;


 struct argv_array ARGV_ARRAY_INIT ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_push (struct argv_array*,int ) ;
 char* dirname (char*) ;
 int error (int ) ;
 int error_errno (int ,char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int mkpath (char*,char const*,char*) ;
 int split_mail_conv (int ,struct am_state*,int ,int) ;
 int stgit_patch_to_mail ;
 int strbuf_getline_lf (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static int split_mail_stgit_series(struct am_state *state, const char **paths,
     int keep_cr)
{
 const char *series_dir;
 char *series_dir_buf;
 FILE *fp;
 struct argv_array patches = ARGV_ARRAY_INIT;
 struct strbuf sb = STRBUF_INIT;
 int ret;

 if (!paths[0] || paths[1])
  return error(_("Only one StGIT patch series can be applied at once"));

 series_dir_buf = xstrdup(*paths);
 series_dir = dirname(series_dir_buf);

 fp = fopen(*paths, "r");
 if (!fp)
  return error_errno(_("could not open '%s' for reading"), *paths);

 while (!strbuf_getline_lf(&sb, fp)) {
  if (*sb.buf == '#')
   continue;

  argv_array_push(&patches, mkpath("%s/%s", series_dir, sb.buf));
 }

 fclose(fp);
 strbuf_release(&sb);
 free(series_dir_buf);

 ret = split_mail_conv(stgit_patch_to_mail, state, patches.argv, keep_cr);

 argv_array_clear(&patches);
 return ret;
}
