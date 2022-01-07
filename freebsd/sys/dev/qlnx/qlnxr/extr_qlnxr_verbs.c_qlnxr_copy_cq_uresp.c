
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uresp ;
struct qlnxr_dev {int * ha; } ;
struct qlnxr_create_cq_uresp {int icid; int db_offset; } ;
struct qlnxr_cq {int icid; } ;
struct ib_udata {int dummy; } ;
typedef int qlnx_host_t ;


 int DB_ADDR_SHIFT (int ) ;
 int DQ_PWM_OFFSET_UCM_RDMA_CQ_CONS_32BIT ;
 int QL_DPRINT12 (int *,char*,...) ;
 int ib_copy_to_udata (struct ib_udata*,struct qlnxr_create_cq_uresp*,int) ;
 int memset (struct qlnxr_create_cq_uresp*,int ,int) ;

__attribute__((used)) static int
qlnxr_copy_cq_uresp(struct qlnxr_dev *dev,
 struct qlnxr_cq *cq, struct ib_udata *udata)
{
 struct qlnxr_create_cq_uresp uresp;
 int rc;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 memset(&uresp, 0, sizeof(uresp));

 uresp.db_offset = DB_ADDR_SHIFT(DQ_PWM_OFFSET_UCM_RDMA_CQ_CONS_32BIT);
 uresp.icid = cq->icid;

 rc = ib_copy_to_udata(udata, &uresp, sizeof(uresp));

 if (rc) {
  QL_DPRINT12(ha, "ib_copy_to_udata error cqid=0x%x[%d]\n",
   cq->icid, rc);
 }

 QL_DPRINT12(ha, "exit [%d]\n", rc);
 return rc;
}
