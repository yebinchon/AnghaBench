
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int ddump_saved; } ;
typedef TYPE_1__ ocs_t ;
typedef int int32_t ;


 int ocs_ddump (TYPE_1__*,int *,int ,int ) ;
 int ocs_log_debug (TYPE_1__*,char*,...) ;
 int ocs_log_err (TYPE_1__*,char*) ;
 scalar_t__ ocs_textbuf_get_written (int *) ;
 int ocs_textbuf_initialized (int *) ;

int32_t
ocs_save_ddump(ocs_t *ocs, uint32_t flags, uint32_t qentries)
{
 if (ocs_textbuf_get_written(&ocs->ddump_saved) > 0) {
  ocs_log_debug(ocs, "Saved ddump already exists\n");
  return 1;
 }

 if (!ocs_textbuf_initialized(&ocs->ddump_saved)) {
  ocs_log_err(ocs, "Saved ddump not allocated\n");
  return -1;
 }

 ocs_log_debug(ocs, "Saving ddump\n");
 ocs_ddump(ocs, &ocs->ddump_saved, flags, qentries);
 ocs_log_debug(ocs, "Saved ddump: %d bytes written\n", ocs_textbuf_get_written(&ocs->ddump_saved));
 return 0;
}
