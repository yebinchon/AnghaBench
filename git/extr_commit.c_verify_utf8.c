
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {unsigned char* buf; scalar_t__ len; } ;


 int find_invalid_utf8 (unsigned char*,scalar_t__) ;
 int strbuf_insert (struct strbuf*,long,unsigned char*,int) ;
 int strbuf_remove (struct strbuf*,long,int) ;

__attribute__((used)) static int verify_utf8(struct strbuf *buf)
{
 int ok = 1;
 long pos = 0;

 for (;;) {
  int bad;
  unsigned char c;
  unsigned char replace[2];

  bad = find_invalid_utf8(buf->buf + pos, buf->len - pos);
  if (bad < 0)
   return ok;
  pos += bad;
  ok = 0;
  c = buf->buf[pos];
  strbuf_remove(buf, pos, 1);


  replace[0] = 0xc0 + (c >> 6);
  replace[1] = 0x80 + (c & 0x3f);
  strbuf_insert(buf, pos, replace, 2);
  pos += 2;
 }
}
