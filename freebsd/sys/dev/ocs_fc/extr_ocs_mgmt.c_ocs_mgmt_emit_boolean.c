
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_textbuf_t ;


 int mode_string (int) ;
 int ocs_textbuf_printf (int *,char*,char const*,int ,char*,char const*) ;

void ocs_mgmt_emit_boolean(ocs_textbuf_t *textbuf, int mode, const char *name, int value)
{
 char *valuebuf = value ? "true" : "false";

 ocs_textbuf_printf(textbuf, "<%s mode=\"%s\">%s</%s>\n", name, mode_string(mode), valuebuf, name);
}
