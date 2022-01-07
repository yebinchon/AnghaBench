
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;


 int sbuf_put_bytes (struct sbuf*,char*,int) ;

__attribute__((used)) static void
sbuf_put_byte(struct sbuf *s, char c)
{

 sbuf_put_bytes(s, &c, 1);
}
