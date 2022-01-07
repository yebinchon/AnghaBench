
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int ocs_textbuf_t ;
struct TYPE_3__ {int * buffer; } ;
typedef TYPE_1__ ocs_textbuf_segment_t ;


 TYPE_1__* ocs_textbuf_get_segment (int *,int ) ;

uint8_t *ocs_textbuf_ext_get_buffer(ocs_textbuf_t *textbuf, uint32_t idx)
{
 ocs_textbuf_segment_t *segment = ocs_textbuf_get_segment(textbuf, idx);
 if (segment == ((void*)0)) {
  return ((void*)0);
 }
 return segment->buffer;
}
