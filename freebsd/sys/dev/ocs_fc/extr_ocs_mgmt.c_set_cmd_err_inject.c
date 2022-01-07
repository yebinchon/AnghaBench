
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cmd_err_inject; } ;
typedef TYPE_1__ ocs_t ;


 int ocs_log_debug (TYPE_1__*,char*,char*,char*) ;
 int ocs_strtoul (char*,int *,int ) ;

__attribute__((used)) static int
set_cmd_err_inject(ocs_t *ocs, char *name, char *value)
{
 ocs->cmd_err_inject = ocs_strtoul(value, ((void*)0), 0);
 ocs_log_debug(ocs, "mgmt set: %s %s\n", name, value);
 return 0;
}
