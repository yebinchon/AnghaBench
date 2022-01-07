
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ddump_saved; } ;
typedef TYPE_1__ ocs_t ;
typedef int int32_t ;


 int ocs_log_debug (TYPE_1__*,char*) ;
 scalar_t__ ocs_textbuf_get_written (int *) ;
 int ocs_textbuf_reset (int *) ;

int32_t
ocs_clear_saved_ddump(ocs_t *ocs)
{

 if (ocs_textbuf_get_written(&ocs->ddump_saved)) {
  ocs_log_debug(ocs, "saved ddump cleared\n");
  ocs_textbuf_reset(&ocs->ddump_saved);
  return 0;
 } else {
  ocs_log_debug(ocs, "no saved ddump found\n");
  return 1;
 }
}
