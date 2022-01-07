
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_req_msg {int primary_offset94; } ;



__attribute__((used)) static inline void cm_req_set_primary_subnet_local(struct cm_req_msg *req_msg,
         u8 subnet_local)
{
 req_msg->primary_offset94 = (u8) ((req_msg->primary_offset94 & 0xF7) |
       ((subnet_local & 0x1) << 3));
}
