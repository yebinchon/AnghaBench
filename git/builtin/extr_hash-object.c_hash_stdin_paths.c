
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;


 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 int die (char*) ;
 int hash_object (char*,char const*,char*,unsigned int,int) ;
 int stdin ;
 scalar_t__ strbuf_getline (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_swap (struct strbuf*,struct strbuf*) ;
 scalar_t__ unquote_c_style (struct strbuf*,char*,int *) ;

__attribute__((used)) static void hash_stdin_paths(const char *type, int no_filters, unsigned flags,
        int literally)
{
 struct strbuf buf = STRBUF_INIT;
 struct strbuf unquoted = STRBUF_INIT;

 while (strbuf_getline(&buf, stdin) != EOF) {
  if (buf.buf[0] == '"') {
   strbuf_reset(&unquoted);
   if (unquote_c_style(&unquoted, buf.buf, ((void*)0)))
    die("line is badly quoted");
   strbuf_swap(&buf, &unquoted);
  }
  hash_object(buf.buf, type, no_filters ? ((void*)0) : buf.buf, flags,
       literally);
 }
 strbuf_release(&buf);
 strbuf_release(&unquoted);
}
