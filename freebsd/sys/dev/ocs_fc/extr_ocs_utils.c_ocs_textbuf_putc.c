
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int segment_list; } ;
typedef TYPE_1__ ocs_textbuf_t ;
struct TYPE_9__ {int buffer_written; int * buffer; } ;
typedef TYPE_2__ ocs_textbuf_segment_t ;


 TYPE_2__* ocs_list_get_tail (int *) ;
 scalar_t__ ocs_segment_remaining (TYPE_2__*) ;
 scalar_t__ ocs_textbuf_initialized (TYPE_1__*) ;
 int ocs_textbuf_segment_alloc (TYPE_1__*) ;

void
ocs_textbuf_putc(ocs_textbuf_t *textbuf, uint8_t c)
{
 ocs_textbuf_segment_t *segment;

 if (ocs_textbuf_initialized(textbuf)) {
  segment = ocs_list_get_tail(&textbuf->segment_list);

  if (ocs_segment_remaining(segment)) {
   *(segment->buffer + segment->buffer_written++) = c;
  }
  if (ocs_segment_remaining(segment) == 0) {
   ocs_textbuf_segment_alloc(textbuf);
  }
 }
}
