
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ocs_textbuf_t ;


 int OCS_NEWLINE_MOD ;
 int ocs_textbuf_printf (int *,char*,...) ;

void
ocs_ddump_buffer(ocs_textbuf_t *textbuf, const char *name, uint32_t instance, void *buffer, uint32_t size)
{
 uint32_t *dword;
 uint32_t i;
 uint32_t count;

 count = size / sizeof(uint32_t);

 if (count == 0) {
  return;
 }

 ocs_textbuf_printf(textbuf, "<%s type=\"buffer\" instance=\"%d\">\n", name, instance);

 dword = buffer;
 for (i = 0; i < count; i++) {

  ocs_textbuf_printf(textbuf, "%08x ", *dword++);
  if ((i % 8) == (8 - 1)) {
   ocs_textbuf_printf(textbuf, "\n");
  }
 }

 ocs_textbuf_printf(textbuf, "</%s>\n", name);
}
