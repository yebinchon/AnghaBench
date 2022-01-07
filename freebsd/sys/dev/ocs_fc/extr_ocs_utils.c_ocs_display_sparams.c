
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_textbuf_t ;
typedef int label ;
typedef int fc_plogi_payload_t ;


 int OCS_DEBUG_ENABLE_SPARAM_DUMP ;
 int ocs_ddump_buffer (int *,char const*,int ,void*,int) ;
 int ocs_dump32 (int ,int *,char*,void*,int) ;
 int ocs_snprintf (char*,int,char*,char const*,...) ;

void
ocs_display_sparams(const char *prelabel, const char *reqlabel, int dest, void *textbuf, void *sparams)
{
 char label[64];

 if (sparams == ((void*)0)) {
  return;
 }

 switch(dest) {
 case 0:
  if (prelabel != ((void*)0)) {
   ocs_snprintf(label, sizeof(label), "[%s] sparam: %s", prelabel, reqlabel);
  } else {
   ocs_snprintf(label, sizeof(label), "sparam: %s", reqlabel);
  }

  ocs_dump32(OCS_DEBUG_ENABLE_SPARAM_DUMP, ((void*)0), label, sparams, sizeof(fc_plogi_payload_t));
  break;
 case 1:
  ocs_ddump_buffer((ocs_textbuf_t*) textbuf, reqlabel, 0, sparams, sizeof(fc_plogi_payload_t));
  break;
 }
}
