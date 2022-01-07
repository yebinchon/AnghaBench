
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ocs_textbuf_t ;


 int * ocs_textbuf_ext_get_buffer (int *,int ) ;

uint8_t *
ocs_textbuf_get_buffer(ocs_textbuf_t *textbuf)
{
 return ocs_textbuf_ext_get_buffer(textbuf, 0);
}
