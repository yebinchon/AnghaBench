
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_rep_msg {int offset20; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void cm_rep_set_starting_psn(struct cm_rep_msg *rep_msg,
        __be32 starting_psn)
{
 rep_msg->offset20 = cpu_to_be32((be32_to_cpu(starting_psn) << 8) |
       (be32_to_cpu(rep_msg->offset20) & 0x000000FF));
}
