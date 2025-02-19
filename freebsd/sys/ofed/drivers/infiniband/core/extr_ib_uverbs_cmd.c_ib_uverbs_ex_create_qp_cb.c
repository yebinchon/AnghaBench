
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uverbs_file {int dummy; } ;
struct ib_uverbs_ex_create_qp_resp {int response_length; } ;
struct ib_udata {int dummy; } ;


 int EFAULT ;
 scalar_t__ ib_copy_to_udata (struct ib_udata*,struct ib_uverbs_ex_create_qp_resp*,int ) ;

__attribute__((used)) static int ib_uverbs_ex_create_qp_cb(struct ib_uverbs_file *file,
         struct ib_uverbs_ex_create_qp_resp *resp,
         struct ib_udata *ucore)
{
 if (ib_copy_to_udata(ucore, resp, resp->response_length))
  return -EFAULT;

 return 0;
}
