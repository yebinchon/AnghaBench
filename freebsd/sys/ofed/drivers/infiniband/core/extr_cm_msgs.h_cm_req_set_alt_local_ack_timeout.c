
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_req_msg {int alt_offset139; } ;



__attribute__((used)) static inline void cm_req_set_alt_local_ack_timeout(struct cm_req_msg *req_msg,
          u8 local_ack_timeout)
{
 req_msg->alt_offset139 = (u8) ((req_msg->alt_offset139 & 0x07) |
           (local_ack_timeout << 3));
}
