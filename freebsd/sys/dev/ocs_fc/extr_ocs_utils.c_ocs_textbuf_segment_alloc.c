
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int allocation_length; scalar_t__ total_allocation_length; scalar_t__ max_allocation_length; int ocs; scalar_t__ extendable; int segment_list; } ;
typedef TYPE_1__ ocs_textbuf_t ;
struct TYPE_8__ {int buffer_length; scalar_t__ buffer_written; int * buffer; } ;
typedef TYPE_2__ ocs_textbuf_segment_t ;


 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int ocs_list_add_tail (int *,TYPE_2__*) ;
 void* ocs_malloc (int ,int,int) ;
 int ocs_textbuf_segment_free (int ,TYPE_2__*) ;

__attribute__((used)) static ocs_textbuf_segment_t *
ocs_textbuf_segment_alloc(ocs_textbuf_t *textbuf)
{
 ocs_textbuf_segment_t *segment = ((void*)0);

 if (textbuf->extendable) {
  segment = ocs_malloc(textbuf->ocs, sizeof(*segment), OCS_M_ZERO | OCS_M_NOWAIT);
  if (segment != ((void*)0)) {
   segment->buffer = ocs_malloc(textbuf->ocs, textbuf->allocation_length, OCS_M_ZERO | OCS_M_NOWAIT);
   if (segment->buffer != ((void*)0)) {
    segment->buffer_length = textbuf->allocation_length;
    segment->buffer_written = 0;
    ocs_list_add_tail(&textbuf->segment_list, segment);
    textbuf->total_allocation_length += textbuf->allocation_length;


    if (textbuf->total_allocation_length >= textbuf->max_allocation_length) {
     textbuf->extendable = 0;
    }

   } else {
    ocs_textbuf_segment_free(textbuf->ocs, segment);
    segment = ((void*)0);
   }
  }
 }
 return segment;
}
