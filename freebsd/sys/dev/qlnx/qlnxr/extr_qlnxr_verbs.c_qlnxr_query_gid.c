
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct qlnxr_dev {int * sgid_tbl; int * ha; } ;
struct ib_device {scalar_t__ del_gid; scalar_t__ add_gid; } ;
typedef int qlnx_host_t ;


 int EAGAIN ;
 int EINVAL ;
 int ENODEV ;
 int QLNXR_MAX_SGID ;
 int QL_DPRINT11 (int *,char*) ;
 int QL_DPRINT12 (int *,char*,int) ;
 struct qlnxr_dev* get_qlnxr_dev (struct ib_device*) ;
 int ib_get_cached_gid (struct ib_device*,int ,int,union ib_gid*,int *) ;
 int memcpy (union ib_gid*,int *,int) ;
 int memset (union ib_gid*,int ,int) ;
 scalar_t__ rdma_protocol_roce (struct ib_device*,int ) ;
 int zgid ;

int
qlnxr_query_gid(struct ib_device *ibdev, u8 port, int index,
 union ib_gid *sgid)
{
 struct qlnxr_dev *dev;
 qlnx_host_t *ha;

 dev = get_qlnxr_dev(ibdev);
 ha = dev->ha;
 QL_DPRINT12(ha, "enter index: %d\n", index);
 if ((index >= QLNXR_MAX_SGID) || (index < 0)) {
  QL_DPRINT12(ha, "invalid gid index %d\n", index);
  memset(sgid, 0, sizeof(*sgid));
  return -EINVAL;
 }
 memcpy(sgid, &dev->sgid_tbl[index], sizeof(*sgid));

 QL_DPRINT12(ha, "exit : %p\n", sgid);

 return 0;
}
