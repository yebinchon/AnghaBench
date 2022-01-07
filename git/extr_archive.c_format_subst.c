
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char const* buf; } ;
struct TYPE_2__ {int type; } ;
struct pretty_print_context {int abbrev; TYPE_1__ date_mode; int member_0; } ;
struct commit {int dummy; } ;


 int DATE_NORMAL ;
 int DEFAULT_ABBREV ;
 struct strbuf STRBUF_INIT ;
 int format_commit_message (struct commit const*,char const*,struct strbuf*,struct pretty_print_context*) ;
 int free (char*) ;
 char* memchr (char const*,char,int) ;
 char* memmem (char const*,size_t,char*,int) ;
 int strbuf_add (struct strbuf*,char const*,size_t) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void format_subst(const struct commit *commit,
    const char *src, size_t len,
    struct strbuf *buf)
{
 char *to_free = ((void*)0);
 struct strbuf fmt = STRBUF_INIT;
 struct pretty_print_context ctx = {0};
 ctx.date_mode.type = DATE_NORMAL;
 ctx.abbrev = DEFAULT_ABBREV;

 if (src == buf->buf)
  to_free = strbuf_detach(buf, ((void*)0));
 for (;;) {
  const char *b, *c;

  b = memmem(src, len, "$Format:", 8);
  if (!b)
   break;
  c = memchr(b + 8, '$', (src + len) - b - 8);
  if (!c)
   break;

  strbuf_reset(&fmt);
  strbuf_add(&fmt, b + 8, c - b - 8);

  strbuf_add(buf, src, b - src);
  format_commit_message(commit, fmt.buf, buf, &ctx);
  len -= c + 1 - src;
  src = c + 1;
 }
 strbuf_add(buf, src, len);
 strbuf_release(&fmt);
 free(to_free);
}
