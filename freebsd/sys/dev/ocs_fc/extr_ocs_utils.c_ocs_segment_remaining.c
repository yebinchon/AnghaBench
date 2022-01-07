
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buffer_written; scalar_t__ buffer_length; } ;
typedef TYPE_1__ ocs_textbuf_segment_t ;
typedef scalar_t__ int32_t ;



__attribute__((used)) static int32_t
ocs_segment_remaining(ocs_textbuf_segment_t *segment)
{
 return segment->buffer_length - segment->buffer_written;
}
