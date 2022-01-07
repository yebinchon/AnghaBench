
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ucontext {int dummy; } ;
struct ib_cq {int dummy; } ;


 int ib_uverbs_cq_idr ;
 struct ib_cq* idr_read_obj (int *,int,struct ib_ucontext*,int) ;

__attribute__((used)) static struct ib_cq *idr_read_cq(int cq_handle, struct ib_ucontext *context, int nested)
{
 return idr_read_obj(&ib_uverbs_cq_idr, cq_handle, context, nested);
}
