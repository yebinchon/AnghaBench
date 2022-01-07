
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* op_start ) (scalar_t__) ;} ;
struct TYPE_4__ {scalar_t__ req_size; size_t req_type; TYPE_2__* req_op; } ;


 size_t OP_MAX ;
 TYPE_2__ errop_info ;
 int errop_set (int) ;
 int fwctl_request_done () ;
 TYPE_2__** ops ;
 TYPE_1__ rinfo ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static int
fwctl_request_start(void)
{
 int err;


 rinfo.req_size -= 12;

 rinfo.req_op = &errop_info;
 if (rinfo.req_type <= OP_MAX && ops[rinfo.req_type] != ((void*)0))
  rinfo.req_op = ops[rinfo.req_type];

 err = (*rinfo.req_op->op_start)(rinfo.req_size);

 if (err) {
  errop_set(err);
  rinfo.req_op = &errop_info;
 }


 if (rinfo.req_size == 0) {
  fwctl_request_done();
  return (1);
 }

 return (0);
}
