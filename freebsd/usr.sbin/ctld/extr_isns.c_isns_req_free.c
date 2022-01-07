
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isns_req {struct isns_req* ir_buf; } ;


 int free (struct isns_req*) ;

void
isns_req_free(struct isns_req *req)
{

 free(req->ir_buf);
 free(req);
}
