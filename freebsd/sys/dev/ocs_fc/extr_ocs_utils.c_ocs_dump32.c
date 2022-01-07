
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ocs_os_handle_t ;
typedef int linebuf ;


 scalar_t__ _isprint (char) ;
 int ocs_debug_is_enabled (int) ;
 int ocs_log_debug (int ,char*,char const*) ;
 int ocs_snprintf (char*,int,char*,...) ;

void
ocs_dump32(uint32_t mask, ocs_os_handle_t os, const char *label, void *buf, uint32_t buf_length)
{
 uint32_t word_count = buf_length / sizeof(uint32_t);
 uint32_t i;
 uint32_t columns = 8;
 uint32_t n;
 uint32_t *wbuf;
 char *cbuf;
 uint32_t addr = 0;
 char linebuf[200];
 char *pbuf = linebuf;

 if (!ocs_debug_is_enabled(mask))
  return;

 if (label)
  ocs_log_debug(os, "%s\n", label);

 wbuf = buf;
 while (word_count > 0) {
  pbuf = linebuf;
  pbuf += ocs_snprintf(pbuf, sizeof(linebuf) - (pbuf-linebuf), "%08X:  ", addr);

  n = word_count;
  if (n > columns)
   n = columns;

  for (i = 0; i < n; i ++)
   pbuf += ocs_snprintf(pbuf, sizeof(linebuf) - (pbuf-linebuf), "%08X ", wbuf[i]);

  for (; i < columns; i ++)
   pbuf += ocs_snprintf(pbuf, sizeof(linebuf) - (pbuf-linebuf), "%8s ", "");

  pbuf += ocs_snprintf(pbuf, sizeof(linebuf) - (pbuf-linebuf), "    ");
  cbuf = (char*)wbuf;
  for (i = 0; i < n*sizeof(uint32_t); i ++)
   pbuf += ocs_snprintf(pbuf, sizeof(linebuf) - (pbuf-linebuf), "%c", _isprint(cbuf[i]) ? cbuf[i] : '.');
  pbuf += ocs_snprintf(pbuf, sizeof(linebuf) - (pbuf-linebuf), "\n");

  ocs_log_debug(os, "%s", linebuf);

  wbuf += n;
  word_count -= n;
  addr += n*sizeof(uint32_t);
 }
}
