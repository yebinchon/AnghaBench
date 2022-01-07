
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;


 struct strbuf STRBUF_INIT ;
 int read_branch_desc (struct strbuf*,char const*) ;
 int strbuf_addf (struct strbuf*,char*,int,char const*) ;
 int strbuf_complete_line (struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 char* strchrnul (char const*,char) ;

__attribute__((used)) static void add_branch_desc(struct strbuf *out, const char *name)
{
 struct strbuf desc = STRBUF_INIT;

 if (!read_branch_desc(&desc, name)) {
  const char *bp = desc.buf;
  while (*bp) {
   const char *ep = strchrnul(bp, '\n');
   if (*ep)
    ep++;
   strbuf_addf(out, "  : %.*s", (int)(ep - bp), bp);
   bp = ep;
  }
  strbuf_complete_line(out);
 }
 strbuf_release(&desc);
}
