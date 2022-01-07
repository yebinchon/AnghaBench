
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int ocs_textbuf_t ;


 int ocs_textbuf_initialized (int *) ;
 int ocs_textbuf_putc (int *,char) ;
 int ocs_textbuf_puts (int *,char*) ;

void
ocs_textbuf_buffer(ocs_textbuf_t *textbuf, uint8_t *buffer, uint32_t buffer_length)
{
 char *s;

 if (!ocs_textbuf_initialized(textbuf)) {
  return;
 }

 s = (char*) buffer;
 while(*s) {
  switch(*s) {
  case '"': ocs_textbuf_puts(textbuf, "&quot;"); break;
  case '\'': ocs_textbuf_puts(textbuf, "&apos;"); break;
  case '<': ocs_textbuf_puts(textbuf, "&lt;"); break;
  case '>': ocs_textbuf_puts(textbuf, "&gt;"); break;
  case '&': ocs_textbuf_puts(textbuf, "&amp;"); break;
  default: ocs_textbuf_putc(textbuf, *s); break;
  }
  s++;
 }

}
