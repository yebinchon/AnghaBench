
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ocs_textbuf_t ;


 int ocs_textbuf_printf (int *,char*,char const*) ;

void
ocs_ddump_endsection(ocs_textbuf_t *textbuf, const char *name, uint32_t instance)
{
 ocs_textbuf_printf(textbuf, "</%s>\n", name);
}
