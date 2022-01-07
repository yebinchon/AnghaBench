
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct qlnxr_dev {int * ha; } ;
struct ib_device {int dummy; } ;
typedef int qlnx_host_t ;


 int EINVAL ;
 int QLNXR_ROCE_PKEY_DEFAULT ;
 int QLNXR_ROCE_PKEY_TABLE_LEN ;
 int QL_DPRINT12 (int *,char*,...) ;
 struct qlnxr_dev* get_qlnxr_dev (struct ib_device*) ;

int
qlnxr_query_pkey(struct ib_device *ibdev, u8 port, u16 index, u16 *pkey)
{
 struct qlnxr_dev *dev;
 qlnx_host_t *ha;

 dev = get_qlnxr_dev(ibdev);
 ha = dev->ha;

 QL_DPRINT12(ha, "enter index = 0x%x\n", index);

 if (index > QLNXR_ROCE_PKEY_TABLE_LEN)
  return -EINVAL;

 *pkey = QLNXR_ROCE_PKEY_DEFAULT;

 QL_DPRINT12(ha, "exit\n");
 return 0;
}
