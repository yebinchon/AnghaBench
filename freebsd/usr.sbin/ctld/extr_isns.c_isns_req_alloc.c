
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isns_req {int ir_buflen; int * ir_buf; scalar_t__ ir_usedlen; } ;
struct isns_hdr {int dummy; } ;


 void* calloc (int,int) ;
 int free (struct isns_req*) ;
 int log_err (int,char*) ;

struct isns_req *
isns_req_alloc(void)
{
 struct isns_req *req;

 req = calloc(sizeof(struct isns_req), 1);
 if (req == ((void*)0)) {
  log_err(1, "calloc");
  return (((void*)0));
 }
 req->ir_buflen = sizeof(struct isns_hdr);
 req->ir_usedlen = 0;
 req->ir_buf = calloc(req->ir_buflen, 1);
 if (req->ir_buf == ((void*)0)) {
  free(req);
  log_err(1, "calloc");
  return (((void*)0));
 }
 return (req);
}
