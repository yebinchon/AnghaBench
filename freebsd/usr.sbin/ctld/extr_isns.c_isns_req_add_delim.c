
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isns_req {int dummy; } ;


 int isns_req_add (struct isns_req*,int ,int ,int *) ;

void
isns_req_add_delim(struct isns_req *req)
{

 isns_req_add(req, 0, 0, ((void*)0));
}
