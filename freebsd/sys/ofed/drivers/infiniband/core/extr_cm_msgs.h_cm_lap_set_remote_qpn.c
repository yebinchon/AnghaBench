
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_lap_msg {int offset12; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void cm_lap_set_remote_qpn(struct cm_lap_msg *lap_msg, __be32 qpn)
{
 lap_msg->offset12 = cpu_to_be32((be32_to_cpu(qpn) << 8) |
      (be32_to_cpu(lap_msg->offset12) &
       0x000000FF));
}
