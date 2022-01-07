
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buffer_length; struct TYPE_4__* buffer; int user_allocated; } ;
typedef TYPE_1__ ocs_textbuf_segment_t ;
typedef int ocs_t ;


 int ocs_free (int *,TYPE_1__*,int) ;

__attribute__((used)) static void
ocs_textbuf_segment_free(ocs_t *ocs, ocs_textbuf_segment_t *segment)
{
 if (segment) {
  if (segment->buffer && !segment->user_allocated) {
   ocs_free(ocs, segment->buffer, segment->buffer_length);
  }
  ocs_free(ocs, segment, sizeof(*segment));
 }
}
