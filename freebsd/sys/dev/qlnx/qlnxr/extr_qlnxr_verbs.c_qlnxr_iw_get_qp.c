
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnxr_dev {int qpidr; int * ha; } ;
struct ib_qp {int dummy; } ;
struct ib_device {int dummy; } ;
typedef int qlnx_host_t ;


 int QL_DPRINT12 (int *,char*,struct qlnxr_dev*,...) ;
 struct qlnxr_dev* get_qlnxr_dev (struct ib_device*) ;
 struct ib_qp* idr_find (int *,int) ;

struct ib_qp *
qlnxr_iw_get_qp(struct ib_device *ibdev, int qpn)
{
 struct qlnxr_dev *dev = get_qlnxr_dev(ibdev);
 struct ib_qp *qp;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter dev = %p ibdev = %p qpn = %d\n", dev, ibdev, qpn);

 qp = idr_find(&dev->qpidr, qpn);

 QL_DPRINT12(ha, "exit qp = %p\n", qp);

 return (qp);
}
