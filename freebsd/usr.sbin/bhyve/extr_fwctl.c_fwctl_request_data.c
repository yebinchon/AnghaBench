
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int req_size; TYPE_1__* req_op; } ;
struct TYPE_3__ {int (* op_data ) (int ,int) ;} ;


 int fwctl_request_done () ;
 TYPE_2__ rinfo ;
 int stub1 (int ,int) ;

__attribute__((used)) static int
fwctl_request_data(uint32_t value)
{


 if (rinfo.req_size <= sizeof(uint32_t))
  rinfo.req_size = 0;
 else
  rinfo.req_size -= sizeof(uint32_t);

 (*rinfo.req_op->op_data)(value, rinfo.req_size);

 if (rinfo.req_size < sizeof(uint32_t)) {
  fwctl_request_done();
  return (1);
 }

 return (0);
}
