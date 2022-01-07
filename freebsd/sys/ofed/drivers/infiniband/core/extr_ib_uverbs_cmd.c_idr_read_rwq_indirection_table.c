
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ucontext {int dummy; } ;
struct ib_rwq_ind_table {int dummy; } ;


 int ib_uverbs_rwq_ind_tbl_idr ;
 struct ib_rwq_ind_table* idr_read_obj (int *,int,struct ib_ucontext*,int ) ;

__attribute__((used)) static struct ib_rwq_ind_table *idr_read_rwq_indirection_table(int ind_table_handle,
              struct ib_ucontext *context)
{
 return idr_read_obj(&ib_uverbs_rwq_ind_tbl_idr, ind_table_handle, context, 0);
}
