
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int logmask; } ;
typedef TYPE_1__ ocs_t ;


 int ocs_strtoul (char*,int *,int ) ;

__attribute__((used)) static int
set_logmask(ocs_t *ocs, char *name, char *value)
{

 ocs->logmask = ocs_strtoul(value, ((void*)0), 0);

 return 0;
}
