
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_textbuf_t ;


 int ocs_textbuf_printf (int *,char*) ;

void
ocs_ddump_startfile(ocs_textbuf_t *textbuf)
{
 ocs_textbuf_printf(textbuf, "<?xml version=\"1.0\" encoding=\"ISO-8859-1\" ?>\n");
}
