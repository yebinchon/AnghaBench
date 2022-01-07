
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int err_injection; } ;
typedef TYPE_1__ ocs_t ;


 int INJECT_DROP_CMD ;
 int NO_ERR_INJECT ;
 int ocs_log_debug (TYPE_1__*,char*,char*,char*) ;
 scalar_t__ ocs_strtoul (char*,int *,int ) ;

__attribute__((used)) static int
set_inject_drop_cmd(ocs_t *ocs, char *name, char *value)
{
 ocs->err_injection = (ocs_strtoul(value, ((void*)0), 0) == 0 ? NO_ERR_INJECT : INJECT_DROP_CMD);
 ocs_log_debug(ocs, "mgmt set: %s %s\n", name, value);
 return 0;
}
