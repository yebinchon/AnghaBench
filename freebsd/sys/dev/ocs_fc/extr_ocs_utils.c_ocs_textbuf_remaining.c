
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int segment_list; } ;
typedef TYPE_1__ ocs_textbuf_t ;
typedef int int32_t ;


 int ocs_list_get_head (int *) ;
 int ocs_segment_remaining (int ) ;
 scalar_t__ ocs_textbuf_initialized (TYPE_1__*) ;

int32_t
ocs_textbuf_remaining(ocs_textbuf_t *textbuf)
{
 if (ocs_textbuf_initialized(textbuf)) {
  return ocs_segment_remaining(ocs_list_get_head(&textbuf->segment_list));
 } else {
  return 0;
 }
}
