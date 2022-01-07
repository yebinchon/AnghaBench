
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ocs; } ;
typedef TYPE_1__ ocs_xport_t ;
typedef int ocs_t ;


 int OCS_M_ZERO ;
 int ocs_assert (int *,int *) ;
 TYPE_1__* ocs_malloc (int *,int,int ) ;

ocs_xport_t *
ocs_xport_alloc(ocs_t *ocs)
{
 ocs_xport_t *xport;

 ocs_assert(ocs, ((void*)0));
 xport = ocs_malloc(ocs, sizeof(*xport), OCS_M_ZERO);
 if (xport != ((void*)0)) {
  xport->ocs = ocs;
 }
 return xport;
}
