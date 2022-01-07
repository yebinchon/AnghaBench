
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


union ib_gid {int raw; } ;
typedef int u8 ;
struct qlnxr_dev {TYPE_1__* ha; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int primary_mac; } ;
typedef TYPE_1__ qlnx_host_t ;


 int QL_DPRINT12 (TYPE_1__*,char*) ;
 struct qlnxr_dev* get_qlnxr_dev (struct ib_device*) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;

int
qlnxr_iw_query_gid(struct ib_device *ibdev, u8 port, int index,
 union ib_gid *sgid)
{
 struct qlnxr_dev *dev;
 qlnx_host_t *ha;

 dev = get_qlnxr_dev(ibdev);
 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 memset(sgid->raw, 0, sizeof(sgid->raw));

 memcpy(sgid->raw, dev->ha->primary_mac, sizeof (dev->ha->primary_mac));

 QL_DPRINT12(ha, "exit\n");

 return 0;
}
