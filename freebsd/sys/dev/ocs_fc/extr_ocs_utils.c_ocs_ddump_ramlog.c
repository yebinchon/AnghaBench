
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int ocs_textbuf_t ;
struct TYPE_4__ {scalar_t__ textbuf_base; int textbuf_count; int * textbufs; } ;
typedef TYPE_1__ ocs_ramlog_t ;
typedef int int32_t ;


 int ocs_ddump_endsection (int *,char*,int ) ;
 int ocs_ddump_section (int *,char*,int ) ;
 int ocs_ramlog_next_idx (TYPE_1__*,int) ;
 int ocs_textbuf_buffer (int *,int ,int ) ;
 int ocs_textbuf_get_buffer (int *) ;
 int ocs_textbuf_get_written (int *) ;

int32_t
ocs_ddump_ramlog(ocs_textbuf_t *textbuf, ocs_ramlog_t *ramlog)
{
 uint32_t i;
 ocs_textbuf_t *rltextbuf;
 int idx;

 if ((ramlog == ((void*)0)) || (ramlog->textbufs == ((void*)0))) {
  return -1;
 }

 ocs_ddump_section(textbuf, "driver-log", 0);


 ocs_ddump_section(textbuf, "startofday", 0);

 if (ramlog->textbuf_base) {
  rltextbuf = &ramlog->textbufs[0];
  ocs_textbuf_buffer(textbuf, ocs_textbuf_get_buffer(rltextbuf), ocs_textbuf_get_written(rltextbuf));
 }
 ocs_ddump_endsection(textbuf, "startofday", 0);


 ocs_ddump_section(textbuf, "recent", 0);


 idx = ocs_ramlog_next_idx(ramlog, ramlog->textbuf_count);

 for (i = ramlog->textbuf_base; i < ramlog->textbuf_count; i ++) {
  rltextbuf = &ramlog->textbufs[idx];
  ocs_textbuf_buffer(textbuf, ocs_textbuf_get_buffer(rltextbuf), ocs_textbuf_get_written(rltextbuf));
  idx = ocs_ramlog_next_idx(ramlog, idx);
 }
 ocs_ddump_endsection(textbuf, "recent", 0);
 ocs_ddump_endsection(textbuf, "driver-log", 0);

 return 0;
}
