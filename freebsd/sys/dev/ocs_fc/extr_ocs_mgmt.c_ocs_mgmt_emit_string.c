
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_textbuf_t ;


 int mode_string (int) ;
 int ocs_textbuf_printf (int *,char*,char const*,int ,char const*,char const*) ;

void ocs_mgmt_emit_string(ocs_textbuf_t *textbuf, int mode, const char *name, const char *value)
{
 ocs_textbuf_printf(textbuf, "<%s mode=\"%s\">%s</%s>\n", name, mode_string(mode), value, name);
}
