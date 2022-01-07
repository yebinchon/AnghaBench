
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ocs_textbuf_t ;
struct TYPE_4__ {int els_active; int els_pend; int els_evtdepth; int els_req_free; } ;
typedef TYPE_1__ ocs_io_t ;


 int ocs_ddump_endsection (int *,char*,int) ;
 int ocs_ddump_io (int *,TYPE_1__*) ;
 int ocs_ddump_section (int *,char*,int) ;
 int ocs_ddump_value (int *,char*,char*,int ) ;

void
ocs_ddump_els(ocs_textbuf_t *textbuf, ocs_io_t *els)
{
 ocs_ddump_section(textbuf, "els", -1);
 ocs_ddump_value(textbuf, "req_free", "%d", els->els_req_free);
 ocs_ddump_value(textbuf, "evtdepth", "%d", els->els_evtdepth);
 ocs_ddump_value(textbuf, "pend", "%d", els->els_pend);
 ocs_ddump_value(textbuf, "active", "%d", els->els_active);
 ocs_ddump_io(textbuf, els);
 ocs_ddump_endsection(textbuf, "els", -1);
}
