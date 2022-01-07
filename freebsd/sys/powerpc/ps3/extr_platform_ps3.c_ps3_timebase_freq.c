
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_long ;
struct cpuref {int dummy; } ;
typedef int platform_t ;


 int PS3_LPAR_ID_PME ;
 int lv1_get_repository_node_value (int ,int,int ,int,int ,int *,int *) ;
 int lv1_repository_string (char*) ;

__attribute__((used)) static u_long
ps3_timebase_freq(platform_t plat, struct cpuref *cpuref)
{
 uint64_t ticks, node_id, junk;

 lv1_get_repository_node_value(PS3_LPAR_ID_PME,
     lv1_repository_string("be") >> 32, 0, 0, 0, &node_id, &junk);
 lv1_get_repository_node_value(PS3_LPAR_ID_PME,
     lv1_repository_string("be") >> 32, node_id,
     lv1_repository_string("clock"), 0, &ticks, &junk);

 return (ticks);
}
