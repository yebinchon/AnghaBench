
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ipmi_request {int dummy; } ;
struct ipmi_device {int dummy; } ;


 int M_IPMI ;
 int M_WAITOK ;
 int M_ZERO ;
 int ipmi_init_request (struct ipmi_request*,struct ipmi_device*,long,int ,int ,size_t,size_t) ;
 struct ipmi_request* malloc (int,int ,int) ;

struct ipmi_request *
ipmi_alloc_request(struct ipmi_device *dev, long msgid, uint8_t addr,
    uint8_t command, size_t requestlen, size_t replylen)
{
 struct ipmi_request *req;

 req = malloc(sizeof(struct ipmi_request) + requestlen + replylen,
     M_IPMI, M_WAITOK | M_ZERO);
 ipmi_init_request(req, dev, msgid, addr, command, requestlen, replylen);
 return (req);
}
