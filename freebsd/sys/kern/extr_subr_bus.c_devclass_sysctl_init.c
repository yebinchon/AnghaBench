
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* devclass_t ;
struct TYPE_4__ {int * sysctl_tree; int sysctl_ctx; int name; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_STRING ;
 int DEVCLASS_SYSCTL_PARENT ;
 int OID_AUTO ;
 int * SYSCTL_ADD_NODE (int *,int ,int ,int ,int,int *,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,TYPE_1__*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int *) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _dev ;
 int devclass_sysctl_handler ;
 int sysctl_ctx_init (int *) ;

__attribute__((used)) static void
devclass_sysctl_init(devclass_t dc)
{

 if (dc->sysctl_tree != ((void*)0))
  return;
 sysctl_ctx_init(&dc->sysctl_ctx);
 dc->sysctl_tree = SYSCTL_ADD_NODE(&dc->sysctl_ctx,
     SYSCTL_STATIC_CHILDREN(_dev), OID_AUTO, dc->name,
     CTLFLAG_RD, ((void*)0), "");
 SYSCTL_ADD_PROC(&dc->sysctl_ctx, SYSCTL_CHILDREN(dc->sysctl_tree),
     OID_AUTO, "%parent", CTLTYPE_STRING | CTLFLAG_RD,
     dc, DEVCLASS_SYSCTL_PARENT, devclass_sysctl_handler, "A",
     "parent class");
}
