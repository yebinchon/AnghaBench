
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;


 int sbuf_putc (struct sbuf*,char) ;

void
devctl_safe_quote_sb(struct sbuf *sb, const char *src)
{

 while (*src != '\0') {
  if (*src == '"' || *src == '\\')
   sbuf_putc(sb, '\\');
  sbuf_putc(sb, *src++);
 }
}
