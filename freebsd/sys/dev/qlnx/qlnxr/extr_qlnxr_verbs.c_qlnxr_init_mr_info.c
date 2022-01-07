
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlnxr_pbl {int pa; int list_entry; } ;
struct qlnxr_dev {int * ha; } ;
struct mr_info {int free_pbl_list; int pbl_info; TYPE_1__* pbl_table; int inuse_pbl_list; } ;
typedef int qlnx_host_t ;
struct TYPE_2__ {int pa; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int QL_DPRINT11 (int *,char*,...) ;
 int QL_DPRINT12 (int *,char*,...) ;
 int free_mr_info (struct qlnxr_dev*,struct mr_info*) ;
 int list_add_tail (int *,int *) ;
 void* qlnxr_alloc_pbl_tbl (struct qlnxr_dev*,int *,int ) ;
 int qlnxr_prepare_pbl_tbl (struct qlnxr_dev*,int *,size_t,int) ;

__attribute__((used)) static int
qlnxr_init_mr_info(struct qlnxr_dev *dev, struct mr_info *info,
 size_t page_list_len, bool two_layered)
{
 int rc;
 struct qlnxr_pbl *tmp;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 INIT_LIST_HEAD(&info->free_pbl_list);
 INIT_LIST_HEAD(&info->inuse_pbl_list);

 rc = qlnxr_prepare_pbl_tbl(dev, &info->pbl_info,
      page_list_len, two_layered);
 if (rc) {
  QL_DPRINT11(ha, "qlnxr_prepare_pbl_tbl [%d]\n", rc);
  goto done;
 }

 info->pbl_table = qlnxr_alloc_pbl_tbl(dev, &info->pbl_info, GFP_KERNEL);

 if (!info->pbl_table) {
  rc = -ENOMEM;
  QL_DPRINT11(ha, "qlnxr_alloc_pbl_tbl returned NULL\n");
  goto done;
 }

 QL_DPRINT12(ha, "pbl_table_pa = %pa\n", &info->pbl_table->pa);




 tmp = qlnxr_alloc_pbl_tbl(dev, &info->pbl_info, GFP_KERNEL);

 if (!tmp) {
  QL_DPRINT11(ha, "Extra PBL is not allocated\n");
  goto done;
 }

 list_add_tail(&tmp->list_entry, &info->free_pbl_list);

 QL_DPRINT12(ha, "extra pbl_table_pa = %pa\n", &tmp->pa);

done:
 if (rc)
  free_mr_info(dev, info);

 QL_DPRINT12(ha, "exit [%d]\n", rc);

 return rc;
}
