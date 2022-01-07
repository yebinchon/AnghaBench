
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_wq {int dummy; } ;
struct ib_ucontext {int dummy; } ;


 int ib_uverbs_wq_idr ;
 struct ib_wq* idr_read_obj (int *,int,struct ib_ucontext*,int ) ;

__attribute__((used)) static struct ib_wq *idr_read_wq(int wq_handle, struct ib_ucontext *context)
{
 return idr_read_obj(&ib_uverbs_wq_idr, wq_handle, context, 0);
}
