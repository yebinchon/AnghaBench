
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
struct ipmi_request {long ir_msgid; char* ir_request; size_t ir_requestlen; char* ir_reply; size_t ir_replybuflen; void* ir_command; void* ir_addr; struct ipmi_device* ir_owner; } ;
struct ipmi_device {int dummy; } ;



__attribute__((used)) static __inline void
ipmi_init_request(struct ipmi_request *req, struct ipmi_device *dev, long msgid,
    uint8_t addr, uint8_t command, size_t requestlen, size_t replylen)
{

 req->ir_owner = dev;
 req->ir_msgid = msgid;
 req->ir_addr = addr;
 req->ir_command = command;
 if (requestlen) {
  req->ir_request = (char *)&req[1];
  req->ir_requestlen = requestlen;
 }
 if (replylen) {
  req->ir_reply = (char *)&req[1] + requestlen;
  req->ir_replybuflen = replylen;
 }
}
