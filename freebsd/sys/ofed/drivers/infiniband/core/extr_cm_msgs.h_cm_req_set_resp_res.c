
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_req_msg {int offset32; } ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void cm_req_set_resp_res(struct cm_req_msg *req_msg, u8 resp_res)
{
 req_msg->offset32 = cpu_to_be32(resp_res |
     (be32_to_cpu(req_msg->offset32) &
      0xFFFFFF00));
}
