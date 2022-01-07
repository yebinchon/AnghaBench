
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int req_count; int req_size; int req_type; int req_txid; } ;


 int exit (int) ;
 int fwctl_request_data (int) ;
 int fwctl_request_start () ;
 int printf (char*) ;
 TYPE_1__ rinfo ;

__attribute__((used)) static int
fwctl_request(uint32_t value)
{

 int ret;

 ret = 0;

 switch (rinfo.req_count) {
 case 0:

  if (value < 12) {
   printf("msg size error");
   exit(4);
  }
  rinfo.req_size = value;
  rinfo.req_count = 1;
  break;
 case 1:
  rinfo.req_type = value;
  rinfo.req_count++;
  break;
 case 2:
  rinfo.req_txid = value;
  rinfo.req_count++;
  ret = fwctl_request_start();
  break;
 default:
  ret = fwctl_request_data(value);
  break;
 }

 return (ret);
}
