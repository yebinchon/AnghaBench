
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; int len; } ;
typedef int FILE ;


 struct strbuf STRBUF_INIT ;
 int fprintf (int *,char*,char const*) ;
 int fwrite (char*,int,int ,int *) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 scalar_t__ starts_with (char const*,char*) ;
 scalar_t__ str_isspace (char const*) ;
 scalar_t__ strbuf_fread (struct strbuf*,int,int *) ;
 int strbuf_getline_lf (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static int stgit_patch_to_mail(FILE *out, FILE *in, int keep_cr)
{
 struct strbuf sb = STRBUF_INIT;
 int subject_printed = 0;

 while (!strbuf_getline_lf(&sb, in)) {
  const char *str;

  if (str_isspace(sb.buf))
   continue;
  else if (skip_prefix(sb.buf, "Author:", &str))
   fprintf(out, "From:%s\n", str);
  else if (starts_with(sb.buf, "From") || starts_with(sb.buf, "Date"))
   fprintf(out, "%s\n", sb.buf);
  else if (!subject_printed) {
   fprintf(out, "Subject: %s\n", sb.buf);
   subject_printed = 1;
  } else {
   fprintf(out, "\n%s\n", sb.buf);
   break;
  }
 }

 strbuf_reset(&sb);
 while (strbuf_fread(&sb, 8192, in) > 0) {
  fwrite(sb.buf, 1, sb.len, out);
  strbuf_reset(&sb);
 }

 strbuf_release(&sb);
 return 0;
}
