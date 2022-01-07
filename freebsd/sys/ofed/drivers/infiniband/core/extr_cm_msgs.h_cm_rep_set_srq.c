
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_rep_msg {int offset27; } ;



__attribute__((used)) static inline void cm_rep_set_srq(struct cm_rep_msg *rep_msg, u8 srq)
{
 rep_msg->offset27 = (u8) ((rep_msg->offset27 & 0xEF) |
      ((srq & 0x1) << 4));
}
