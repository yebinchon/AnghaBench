
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nodedb_mask; } ;
typedef TYPE_1__ ocs_t ;


 int ocs_strtoul (char*,int ,int ) ;

__attribute__((used)) static int
set_nodedb_mask(ocs_t *ocs, char *name, char *value)
{
 ocs->nodedb_mask = ocs_strtoul(value, 0, 0);
 return 0;
}
