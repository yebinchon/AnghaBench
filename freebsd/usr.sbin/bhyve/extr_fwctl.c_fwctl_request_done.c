
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* resp_biov; scalar_t__ resp_size; scalar_t__ resp_off; TYPE_1__* req_op; int resp_error; } ;
struct TYPE_5__ {scalar_t__ iov_len; } ;
struct TYPE_4__ {int (* op_result ) (TYPE_2__**) ;} ;


 TYPE_3__ rinfo ;
 int stub1 (TYPE_2__**) ;

__attribute__((used)) static void
fwctl_request_done(void)
{

 rinfo.resp_error = (*rinfo.req_op->op_result)(&rinfo.resp_biov);


 rinfo.resp_off = 0;
 if (rinfo.resp_biov == ((void*)0)) {
  rinfo.resp_size = 0;
 } else {
  rinfo.resp_size = rinfo.resp_biov[0].iov_len;
 }
}
