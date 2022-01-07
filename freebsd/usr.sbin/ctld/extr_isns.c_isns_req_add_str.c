
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct isns_req {int dummy; } ;


 int isns_req_add (struct isns_req*,int ,scalar_t__,char const*) ;
 scalar_t__ strlen (char const*) ;

void
isns_req_add_str(struct isns_req *req, uint32_t tag, const char *value)
{

 isns_req_add(req, tag, strlen(value) + 1, value);
}
