
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct isns_req {int ir_usedlen; int * ir_buf; } ;
struct isns_hdr {int dummy; } ;


 int be32dec (int *) ;

uint32_t
isns_req_get_status(struct isns_req *req)
{

 if (req->ir_usedlen < sizeof(struct isns_hdr) + 4)
  return (-1);
 return (be32dec(&req->ir_buf[sizeof(struct isns_hdr)]));
}
