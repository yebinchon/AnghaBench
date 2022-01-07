
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint32_t ;
struct isns_req {int dummy; } ;


 int be32enc (int *,int ) ;
 int isns_req_add (struct isns_req*,int ,int,int *) ;

void
isns_req_add_32(struct isns_req *req, uint32_t tag, uint32_t value)
{
 uint32_t beval;

 be32enc(&beval, value);
 isns_req_add(req, tag, sizeof(value), &beval);
}
