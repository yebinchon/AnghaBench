
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_textbuf_t ;


 int ocs_textbuf_printf (int *,char*,char const*) ;

void ocs_mgmt_end_section(ocs_textbuf_t *textbuf, const char *name, int index)
{

 ocs_textbuf_printf(textbuf, "</%s>\n", name);

}
