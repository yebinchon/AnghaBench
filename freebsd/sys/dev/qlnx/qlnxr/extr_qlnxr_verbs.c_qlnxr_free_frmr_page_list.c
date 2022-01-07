
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct qlnxr_fast_reg_page_list* page_list; } ;
struct qlnxr_fast_reg_page_list {TYPE_1__ ibfrpl; int info; int dev; } ;
struct ib_fast_reg_page_list {int dummy; } ;


 int free_mr_info (int ,int *) ;
 struct qlnxr_fast_reg_page_list* get_qlnxr_frmr_list (struct ib_fast_reg_page_list*) ;
 int kfree (struct qlnxr_fast_reg_page_list*) ;

void
qlnxr_free_frmr_page_list(struct ib_fast_reg_page_list *page_list)
{
 struct qlnxr_fast_reg_page_list *frmr_list;

 frmr_list = get_qlnxr_frmr_list(page_list);

 free_mr_info(frmr_list->dev, &frmr_list->info);

 kfree(frmr_list->ibfrpl.page_list);
 kfree(frmr_list);

 return;
}
