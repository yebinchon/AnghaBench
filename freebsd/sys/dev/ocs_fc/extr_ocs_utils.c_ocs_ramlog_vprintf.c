
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_4__ {size_t cur_textbuf_idx; int lock; int * cur_textbuf; int * textbufs; int initialized; } ;
typedef TYPE_1__ ocs_ramlog_t ;
typedef int int32_t ;


 int ocs_lock (int *) ;
 size_t ocs_ramlog_next_idx (TYPE_1__*,size_t) ;
 int ocs_textbuf_remaining (int *) ;
 int ocs_textbuf_reset (int *) ;
 int ocs_textbuf_vprintf (int *,char const*,int ) ;
 int ocs_unlock (int *) ;

int32_t
ocs_ramlog_vprintf(ocs_ramlog_t *ramlog, const char *fmt, va_list ap)
{
 if (ramlog == ((void*)0) || !ramlog->initialized) {
  return -1;
 }




 ocs_lock(&ramlog->lock);
 if (ocs_textbuf_remaining(ramlog->cur_textbuf) < 120) {
  ramlog->cur_textbuf_idx = ocs_ramlog_next_idx(ramlog, ramlog->cur_textbuf_idx);
  ramlog->cur_textbuf = &ramlog->textbufs[ramlog->cur_textbuf_idx];
  ocs_textbuf_reset(ramlog->cur_textbuf);
 }

 ocs_textbuf_vprintf(ramlog->cur_textbuf, fmt, ap);
 ocs_unlock(&ramlog->lock);

 return 0;
}
