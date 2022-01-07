
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ocs_textbuf_t ;
struct TYPE_6__ {char* indicator; char* state; char* reqtag; char* abort_reqtag; char* abort_in_progress; char* type; char* xbusy; char* def_sgl_count; char* n_sge; int * ovfl_io; int * ovfl_sgl; int wqe_link; TYPE_1__* wq; int ref; } ;
typedef TYPE_2__ ocs_hw_io_t ;
struct TYPE_5__ {int instance; } ;


 int ocs_assert (TYPE_2__*) ;
 int ocs_ddump_endsection (int *,char*,char*) ;
 int ocs_ddump_section (int *,char*,char*) ;
 int ocs_ddump_value (int *,char*,char*,...) ;
 char* ocs_list_on_list (int *) ;
 char* ocs_ref_read_count (int *) ;

__attribute__((used)) static void
ocs_ddump_hw_io(ocs_textbuf_t *textbuf, ocs_hw_io_t *io)
{
 ocs_assert(io);

 ocs_ddump_section(textbuf, "hw_io", io->indicator);

 ocs_ddump_value(textbuf, "state", "%d", io->state);
 ocs_ddump_value(textbuf, "xri", "0x%x", io->indicator);
 ocs_ddump_value(textbuf, "tag", "0x%x", io->reqtag);
 ocs_ddump_value(textbuf, "abort_reqtag", "0x%x", io->abort_reqtag);
 ocs_ddump_value(textbuf, "ref_count", "%d", ocs_ref_read_count(&io->ref));


 ocs_ddump_value(textbuf, "abort", "0x%x", io->abort_in_progress);
 ocs_ddump_value(textbuf, "wq_index", "%d", (io->wq == ((void*)0) ? 0xffff : io->wq->instance));
 ocs_ddump_value(textbuf, "type", "%d", io->type);
 ocs_ddump_value(textbuf, "xbusy", "%d", io->xbusy);
 ocs_ddump_value(textbuf, "active_wqe_link", "%d", ocs_list_on_list(&io->wqe_link));
 ocs_ddump_value(textbuf, "def_sgl_count", "%d", io->def_sgl_count);
 ocs_ddump_value(textbuf, "n_sge", "%d", io->n_sge);
 ocs_ddump_value(textbuf, "has_ovfl_sgl", "%s", (io->ovfl_sgl != ((void*)0) ? "TRUE" : "FALSE"));
 ocs_ddump_value(textbuf, "has_ovfl_io", "%s", (io->ovfl_io != ((void*)0) ? "TRUE" : "FALSE"));

 ocs_ddump_endsection(textbuf, "hw_io", io->indicator);
}
