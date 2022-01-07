
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
 int NETISR_CPUID_NONE ;
 int rss_getbucket (int) ;
 int rss_getcpu (int ) ;

u_int
rss_hash2cpuid(uint32_t hash_val, uint32_t hash_type)
{

 switch (hash_type) {
 case 133:
 case 131:
 case 129:
 case 132:
 case 130:
 case 128:
  return (rss_getcpu(rss_getbucket(hash_val)));
 default:
  return (NETISR_CPUID_NONE);
 }
}
