
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int ocs_textbuf_t ;
typedef int int32_t ;


 int OCS_NEWLINE_MOD ;
 int ocs_textbuf_printf (int *,char*,...) ;

void
ocs_ddump_queue_entries(ocs_textbuf_t *textbuf, void *q_addr, uint32_t size,
   uint32_t length, int32_t index, uint32_t qentries)
{
 uint32_t i;
 uint32_t j;
 uint8_t *entry;
 uint32_t *dword;
 uint32_t entry_count = 0;
 uint32_t entry_words = size / sizeof(uint32_t);

 if ((qentries == (uint32_t)-1) || (qentries > length)) {

  entry_count = length;
  index = 0;
 } else {
  entry_count = qentries;

  index -= (qentries - 1);
  if (index < 0) {
   index += length;
  }

 }

 ocs_textbuf_printf(textbuf, "<qentries>\n");
 for (i = 0; i < entry_count; i++){
  entry = q_addr;
  entry += index * size;
  dword = (uint32_t *)entry;

  ocs_textbuf_printf(textbuf, "[%04x] ", index);
  for (j = 0; j < entry_words; j++) {
   ocs_textbuf_printf(textbuf, "%08x ", *dword++);
   if (((j+1) == entry_words) ||
       ((j % 8) == (8 - 1))) {
    ocs_textbuf_printf(textbuf, "\n");
    if ((j+1) < entry_words) {
     ocs_textbuf_printf(textbuf, "       ");
    }
   }
  }

  index++;
  if ((uint32_t)index >= length) {
   index = 0;
  }
 }
 ocs_textbuf_printf(textbuf, "</qentries>\n");
}
