
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; char* buf; } ;


 int count_ident (char const*,size_t) ;
 char* memchr (char const*,char,int) ;
 int memcmp (char const*,char*,int) ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char const*,size_t) ;
 size_t strbuf_avail (struct strbuf*) ;
 int strbuf_grow (struct strbuf*,size_t) ;
 int strbuf_setlen (struct strbuf*,int) ;

__attribute__((used)) static int ident_to_git(const char *src, size_t len,
   struct strbuf *buf, int ident)
{
 char *dst, *dollar;

 if (!ident || (src && !count_ident(src, len)))
  return 0;

 if (!buf)
  return 1;


 if (strbuf_avail(buf) + buf->len < len)
  strbuf_grow(buf, len - buf->len);
 dst = buf->buf;
 for (;;) {
  dollar = memchr(src, '$', len);
  if (!dollar)
   break;
  memmove(dst, src, dollar + 1 - src);
  dst += dollar + 1 - src;
  len -= dollar + 1 - src;
  src = dollar + 1;

  if (len > 3 && !memcmp(src, "Id:", 3)) {
   dollar = memchr(src + 3, '$', len - 3);
   if (!dollar)
    break;
   if (memchr(src + 3, '\n', dollar - src - 3)) {

    continue;
   }

   memcpy(dst, "Id$", 3);
   dst += 3;
   len -= dollar + 1 - src;
   src = dollar + 1;
  }
 }
 memmove(dst, src, len);
 strbuf_setlen(buf, dst + len - buf->buf);
 return 1;
}
