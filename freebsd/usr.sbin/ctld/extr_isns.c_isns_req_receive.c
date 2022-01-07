
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isns_req {int ir_usedlen; int * ir_buf; } ;
struct isns_hdr {int ih_length; int ih_flags; int ih_version; } ;
typedef int ssize_t ;


 int ISNS_FLAG_FIRST ;
 int ISNS_FLAG_LAST ;
 int ISNS_VERSION ;
 int be16dec (int ) ;
 int isns_req_getspace (struct isns_req*,int) ;
 int read (int,int *,int) ;

int
isns_req_receive(int s, struct isns_req *req)
{
 struct isns_hdr *hdr;
 ssize_t res, len;

 req->ir_usedlen = 0;
 isns_req_getspace(req, sizeof(*hdr));
 res = read(s, req->ir_buf, sizeof(*hdr));
 if (res < (ssize_t)sizeof(*hdr))
  return (-1);
 req->ir_usedlen = sizeof(*hdr);
 hdr = (struct isns_hdr *)req->ir_buf;
 if (be16dec(hdr->ih_version) != ISNS_VERSION)
  return (-1);
 if ((be16dec(hdr->ih_flags) & (ISNS_FLAG_LAST | ISNS_FLAG_FIRST)) !=
     (ISNS_FLAG_LAST | ISNS_FLAG_FIRST))
  return (-1);
 len = be16dec(hdr->ih_length);
 isns_req_getspace(req, len);
 res = read(s, &req->ir_buf[req->ir_usedlen], len);
 if (res < len)
  return (-1);
 req->ir_usedlen += len;
 return (0);
}
