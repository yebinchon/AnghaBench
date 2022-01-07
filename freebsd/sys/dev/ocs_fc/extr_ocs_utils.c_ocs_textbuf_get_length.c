
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_textbuf_t ;
typedef int int32_t ;


 int ocs_textbuf_ext_get_length (int *,int ) ;

int32_t
ocs_textbuf_get_length(ocs_textbuf_t *textbuf)
{
 return ocs_textbuf_ext_get_length(textbuf, 0);
}
