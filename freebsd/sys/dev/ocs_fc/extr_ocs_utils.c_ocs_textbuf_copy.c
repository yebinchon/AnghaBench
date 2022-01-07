
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int ocs_textbuf_t ;


 int ocs_textbuf_initialized (int *) ;
 int ocs_textbuf_putc (int *,int ) ;

void
ocs_textbuf_copy(ocs_textbuf_t *textbuf, uint8_t *buffer, uint32_t buffer_length)
{
 char *s;

 if (!ocs_textbuf_initialized(textbuf)) {
  return;
 }

 s = (char*) buffer;
 while(*s) {
  ocs_textbuf_putc(textbuf, *s++);
 }

}
