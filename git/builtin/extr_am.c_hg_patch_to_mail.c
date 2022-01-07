
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct strbuf {char* buf; int len; } ;
typedef int FILE ;


 int DATE_MODE (int ) ;
 int RFC2822 ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ errno ;
 int error (int ) ;
 int fprintf (int *,char*,char const*) ;
 int fwrite (char*,int,int ,int *) ;
 int labs (long) ;
 int parse_timestamp (char const*,char**,int) ;
 char* show_date (int ,long,int ) ;
 scalar_t__ skip_prefix (char*,char*,char const**) ;
 scalar_t__ starts_with (char*,char*) ;
 scalar_t__ strbuf_fread (struct strbuf*,int,int *) ;
 int strbuf_getline_lf (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static int hg_patch_to_mail(FILE *out, FILE *in, int keep_cr)
{
 struct strbuf sb = STRBUF_INIT;
 int rc = 0;

 while (!strbuf_getline_lf(&sb, in)) {
  const char *str;

  if (skip_prefix(sb.buf, "# User ", &str))
   fprintf(out, "From: %s\n", str);
  else if (skip_prefix(sb.buf, "# Date ", &str)) {
   timestamp_t timestamp;
   long tz, tz2;
   char *end;

   errno = 0;
   timestamp = parse_timestamp(str, &end, 10);
   if (errno) {
    rc = error(_("invalid timestamp"));
    goto exit;
   }

   if (!skip_prefix(end, " ", &str)) {
    rc = error(_("invalid Date line"));
    goto exit;
   }

   errno = 0;
   tz = strtol(str, &end, 10);
   if (errno) {
    rc = error(_("invalid timezone offset"));
    goto exit;
   }

   if (*end) {
    rc = error(_("invalid Date line"));
    goto exit;
   }






   tz2 = labs(tz) / 3600 * 100 + labs(tz) % 3600 / 60;
   if (tz > 0)
    tz2 = -tz2;

   fprintf(out, "Date: %s\n", show_date(timestamp, tz2, DATE_MODE(RFC2822)));
  } else if (starts_with(sb.buf, "# ")) {
   continue;
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
exit:
 strbuf_release(&sb);
 return rc;
}
