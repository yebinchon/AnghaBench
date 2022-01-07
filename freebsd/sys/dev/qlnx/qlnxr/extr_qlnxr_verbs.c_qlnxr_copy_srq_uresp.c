
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uresp ;
struct qlnxr_srq {int srq_id; } ;
struct qlnxr_dev {int * ha; } ;
struct qlnxr_create_srq_uresp {int srq_id; } ;
struct ib_udata {int dummy; } ;
typedef int qlnx_host_t ;


 int QL_DPRINT12 (int *,char*,...) ;
 int ib_copy_to_udata (struct ib_udata*,struct qlnxr_create_srq_uresp*,int) ;
 int memset (struct qlnxr_create_srq_uresp*,int ,int) ;

__attribute__((used)) static int
qlnxr_copy_srq_uresp(struct qlnxr_dev *dev,
 struct qlnxr_srq *srq,
 struct ib_udata *udata)
{
 struct qlnxr_create_srq_uresp uresp;
 qlnx_host_t *ha;
 int rc;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 memset(&uresp, 0, sizeof(uresp));

 uresp.srq_id = srq->srq_id;

 rc = ib_copy_to_udata(udata, &uresp, sizeof(uresp));

 QL_DPRINT12(ha, "exit [%d]\n", rc);
 return rc;
}
