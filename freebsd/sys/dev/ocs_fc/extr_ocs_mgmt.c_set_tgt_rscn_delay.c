
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tgt_rscn_delay_msec; } ;
typedef TYPE_1__ ocs_t ;


 int ocs_log_debug (TYPE_1__*,char*,char*,char*) ;
 int ocs_strtoul (char*,int *,int ) ;

__attribute__((used)) static int
set_tgt_rscn_delay(ocs_t *ocs, char *name, char *value)
{
 ocs->tgt_rscn_delay_msec = ocs_strtoul(value, ((void*)0), 0) * 1000;
 ocs_log_debug(ocs, "mgmt set: %s %s\n", name, value);
 return 0;
}
