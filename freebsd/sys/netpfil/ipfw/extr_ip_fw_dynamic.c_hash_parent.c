
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ipfw_flow_id {int dummy; } ;
typedef int rule ;


 int hash_packet (struct ipfw_flow_id const*) ;
 int jenkins_hash32 (int const*,int,int ) ;

__attribute__((used)) static __inline uint32_t
hash_parent(const struct ipfw_flow_id *id, const void *rule)
{

 return (jenkins_hash32((const uint32_t *)&rule,
     sizeof(rule) / sizeof(uint32_t), hash_packet(id)));
}
