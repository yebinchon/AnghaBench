
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int compact_format ;
 int gettext_width (char const*) ;
 int print_compact (struct strbuf*,char const*,char const*) ;
 int print_remote_to_local (struct strbuf*,char const*,char const*) ;
 int strbuf_addf (struct strbuf*,char*,...) ;
 int strlen (char const*) ;

__attribute__((used)) static void format_display(struct strbuf *display, char code,
      const char *summary, const char *error,
      const char *remote, const char *local,
      int summary_width)
{
 int width = (summary_width + strlen(summary) - gettext_width(summary));

 strbuf_addf(display, "%c %-*s ", code, width, summary);
 if (!compact_format)
  print_remote_to_local(display, remote, local);
 else
  print_compact(display, remote, local);
 if (error)
  strbuf_addf(display, "  (%s)", error);
}
