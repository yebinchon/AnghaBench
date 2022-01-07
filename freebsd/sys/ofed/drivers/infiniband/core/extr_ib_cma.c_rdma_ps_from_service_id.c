
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rdma_port_space { ____Placeholder_rdma_port_space } rdma_port_space ;
typedef int __be64 ;


 int be64_to_cpu (int ) ;

__attribute__((used)) static enum rdma_port_space rdma_ps_from_service_id(__be64 service_id)
{
 return (be64_to_cpu(service_id) >> 16) & 0xffff;
}
