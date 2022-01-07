
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; } ;
typedef TYPE_1__ ocs_io_t ;


 int ocs_ref_put (int *) ;

void
ocs_els_io_free(ocs_io_t *els)
{
 ocs_ref_put(&els->ref);
}
