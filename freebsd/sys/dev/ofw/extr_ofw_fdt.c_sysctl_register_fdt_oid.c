
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTLFLAG_RD ;
 int CTLTYPE_OPAQUE ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,int *,int ,int ,char*,char*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _hw_fdt ;
 int * fdtp ;
 int sysctl_handle_dtb ;

__attribute__((used)) static void
sysctl_register_fdt_oid(void *arg)
{


 if (fdtp == ((void*)0))
  return;

 SYSCTL_ADD_PROC(((void*)0), SYSCTL_STATIC_CHILDREN(_hw_fdt), OID_AUTO, "dtb",
     CTLTYPE_OPAQUE | CTLFLAG_RD, ((void*)0), 0, sysctl_handle_dtb, "",
     "Device Tree Blob");
}
