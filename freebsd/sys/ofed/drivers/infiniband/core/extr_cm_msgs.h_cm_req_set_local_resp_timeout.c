
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_req_msg {int offset44; } ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void cm_req_set_local_resp_timeout(struct cm_req_msg *req_msg,
       u8 resp_timeout)
{
 req_msg->offset44 = cpu_to_be32((resp_timeout << 3) |
       (be32_to_cpu(req_msg->offset44) & 0xFFFFFF07));
}
