
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_req_msg {int offset44; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void cm_req_set_starting_psn(struct cm_req_msg *req_msg,
        __be32 starting_psn)
{
 req_msg->offset44 = cpu_to_be32((be32_to_cpu(starting_psn) << 8) |
       (be32_to_cpu(req_msg->offset44) & 0x000000FF));
}
