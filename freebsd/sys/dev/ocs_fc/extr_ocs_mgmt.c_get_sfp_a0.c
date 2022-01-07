
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int ocs_textbuf_t ;
typedef int ocs_t ;
typedef int int32_t ;


 int MGMT_MODE_RD ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int SFP_PAGE_SIZE ;
 int ocs_free (int *,char*,int) ;
 char* ocs_malloc (int *,int,int) ;
 int ocs_mgmt_emit_string (int *,int ,char*,char*) ;
 int ocs_mgmt_get_sfp (int *,int,char*,int) ;
 int ocs_snprintf (char*,int,char*,char) ;

__attribute__((used)) static void
get_sfp_a0(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
 uint8_t *page_data;
 char *buf;
 int i;
 int32_t bytes_read;

 page_data = ocs_malloc(ocs, SFP_PAGE_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
 if (page_data == ((void*)0)) {
  return;
 }

 buf = ocs_malloc(ocs, (SFP_PAGE_SIZE * 3) + 1, OCS_M_ZERO | OCS_M_NOWAIT);
 if (buf == ((void*)0)) {
  ocs_free(ocs, page_data, SFP_PAGE_SIZE);
  return;
 }

 bytes_read = ocs_mgmt_get_sfp(ocs, 0xa0, page_data, SFP_PAGE_SIZE);

 if (bytes_read <= 0) {
  ocs_mgmt_emit_string(textbuf, MGMT_MODE_RD, "sfp_a0", "(unknown)");
 } else {
  char *d = buf;
  uint8_t *s = page_data;
  int buffer_remaining = (SFP_PAGE_SIZE * 3) + 1;
  int bytes_added;

  for (i = 0; i < bytes_read; i++) {
   bytes_added = ocs_snprintf(d, buffer_remaining, "%02x ", *s);
   ++s;
   d += bytes_added;
   buffer_remaining -= bytes_added;
  }
  *d = '\0';
  ocs_mgmt_emit_string(textbuf, MGMT_MODE_RD, "sfp_a0", buf);
 }

 ocs_free(ocs, page_data, SFP_PAGE_SIZE);
 ocs_free(ocs, buf, (3 * SFP_PAGE_SIZE) + 1);
}
