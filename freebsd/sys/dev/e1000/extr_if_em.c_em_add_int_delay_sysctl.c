
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em_int_delay_info {int offset; int value; struct adapter* adapter; } ;
struct adapter {int dev; } ;


 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char const*,int,struct em_int_delay_info*,int ,int ,char*,char const*) ;
 int SYSCTL_CHILDREN (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int em_sysctl_int_delay ;

__attribute__((used)) static void
em_add_int_delay_sysctl(struct adapter *adapter, const char *name,
 const char *description, struct em_int_delay_info *info,
 int offset, int value)
{
 info->adapter = adapter;
 info->offset = offset;
 info->value = value;
 SYSCTL_ADD_PROC(device_get_sysctl_ctx(adapter->dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(adapter->dev)),
     OID_AUTO, name, CTLTYPE_INT|CTLFLAG_RW,
     info, 0, em_sysctl_int_delay, "I", description);
}
