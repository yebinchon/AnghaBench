
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int ocs_t ;
struct TYPE_3__ {size_t textbuf_base; size_t textbuf_count; int cur_textbuf_idx; int * textbufs; } ;
typedef TYPE_1__ ocs_ramlog_t ;


 int ocs_textbuf_reset (int *) ;

void
ocs_ramlog_clear(ocs_t *ocs, ocs_ramlog_t *ramlog, int clear_start_of_day, int clear_recent)
{
 uint32_t i;

 if (clear_recent) {
  for (i = ramlog->textbuf_base; i < ramlog->textbuf_count; i ++) {
   ocs_textbuf_reset(&ramlog->textbufs[i]);
  }
  ramlog->cur_textbuf_idx = 1;
 }
 if (clear_start_of_day && ramlog->textbuf_base) {
  ocs_textbuf_reset(&ramlog->textbufs[0]);



  ramlog->textbuf_base = 0;
 }
}
