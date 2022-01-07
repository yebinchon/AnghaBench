
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* if_int_delay_info_t ;
typedef TYPE_2__* if_ctx_t ;
struct TYPE_7__ {int ifc_dev; } ;
struct TYPE_6__ {int iidi_offset; int iidi_value; TYPE_2__* iidi_ctx; } ;


 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char const*,int,TYPE_1__*,int ,int ,char*,char const*) ;
 int SYSCTL_CHILDREN (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int iflib_sysctl_int_delay ;

void
iflib_add_int_delay_sysctl(if_ctx_t ctx, const char *name,
 const char *description, if_int_delay_info_t info,
 int offset, int value)
{
 info->iidi_ctx = ctx;
 info->iidi_offset = offset;
 info->iidi_value = value;
 SYSCTL_ADD_PROC(device_get_sysctl_ctx(ctx->ifc_dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(ctx->ifc_dev)),
     OID_AUTO, name, CTLTYPE_INT|CTLFLAG_RW,
     info, 0, iflib_sysctl_int_delay, "I", description);
}
