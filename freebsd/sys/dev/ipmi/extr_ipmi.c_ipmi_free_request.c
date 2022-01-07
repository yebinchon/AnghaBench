
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_request {int dummy; } ;


 int M_IPMI ;
 int free (struct ipmi_request*,int ) ;

void
ipmi_free_request(struct ipmi_request *req)
{

 free(req, M_IPMI);
}
