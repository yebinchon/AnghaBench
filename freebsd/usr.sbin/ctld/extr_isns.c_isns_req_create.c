
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct isns_req {int ir_usedlen; scalar_t__ ir_buf; } ;
struct isns_hdr {int ih_flags; int ih_function; int ih_version; } ;


 int ISNS_VERSION ;
 int be16enc (int ,int ) ;
 struct isns_req* isns_req_alloc () ;

struct isns_req *
isns_req_create(uint16_t func, uint16_t flags)
{
 struct isns_req *req;
 struct isns_hdr *hdr;

 req = isns_req_alloc();
 req->ir_usedlen = sizeof(struct isns_hdr);
 hdr = (struct isns_hdr *)req->ir_buf;
 be16enc(hdr->ih_version, ISNS_VERSION);
 be16enc(hdr->ih_function, func);
 be16enc(hdr->ih_flags, flags);
 return (req);
}
