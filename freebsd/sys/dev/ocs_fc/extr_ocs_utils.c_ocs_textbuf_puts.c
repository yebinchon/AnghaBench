
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_textbuf_t ;


 scalar_t__ ocs_textbuf_initialized (int *) ;
 int ocs_textbuf_putc (int *,int ) ;

void
ocs_textbuf_puts(ocs_textbuf_t *textbuf, char *s)
{
 if (ocs_textbuf_initialized(textbuf)) {
  while(*s) {
   ocs_textbuf_putc(textbuf, *s++);
  }
 }
}
