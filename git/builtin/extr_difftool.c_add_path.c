
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char* buf; } ;


 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;

__attribute__((used)) static void add_path(struct strbuf *buf, size_t base_len, const char *path)
{
 strbuf_setlen(buf, base_len);
 if (buf->len && buf->buf[buf->len - 1] != '/')
  strbuf_addch(buf, '/');
 strbuf_addstr(buf, path);
}
