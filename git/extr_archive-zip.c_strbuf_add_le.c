
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct strbuf {int dummy; } ;


 int strbuf_addch (struct strbuf*,int) ;

__attribute__((used)) static int strbuf_add_le(struct strbuf *sb, size_t size, uintmax_t n)
{
 while (size-- > 0) {
  strbuf_addch(sb, n & 0xff);
  n >>= 8;
 }
 return -!!n;
}
