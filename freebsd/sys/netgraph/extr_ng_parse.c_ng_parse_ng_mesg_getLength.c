
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct ng_parse_type {int dummy; } ;
struct TYPE_2__ {int arglen; } ;
struct ng_mesg {TYPE_1__ header; } ;



__attribute__((used)) static int
ng_parse_ng_mesg_getLength(const struct ng_parse_type *type,
 const u_char *start, const u_char *buf)
{
 const struct ng_mesg *msg;

 msg = (const struct ng_mesg *)(buf - sizeof(*msg));
 return msg->header.arglen;
}
