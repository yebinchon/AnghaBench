
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mr {int dummy; } ;
struct qlnxr_mr {struct ib_mr ibmr; } ;
struct qlnxr_dev {int * ha; } ;
struct ib_pd {int device; } ;
typedef int qlnx_host_t ;


 int EINVAL ;
 struct ib_mr* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct qlnxr_mr*) ;
 int QL_DPRINT12 (int *,char*,...) ;
 struct qlnxr_mr* __qlnxr_alloc_mr (struct ib_pd*,int) ;
 struct qlnxr_dev* get_qlnxr_dev (int ) ;

struct ib_mr *
qlnxr_alloc_frmr(struct ib_pd *ibpd, int max_page_list_len)
{
 struct qlnxr_dev *dev;
 struct qlnxr_mr *mr;
 qlnx_host_t *ha;
 struct ib_mr *ibmr = ((void*)0);

 dev = get_qlnxr_dev((ibpd->device));
 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 mr = __qlnxr_alloc_mr(ibpd, max_page_list_len);

 if (IS_ERR(mr)) {
  ibmr = ERR_PTR(-EINVAL);
 } else {
  ibmr = &mr->ibmr;
 }

 QL_DPRINT12(ha, "exit %p\n", ibmr);
 return (ibmr);
}
