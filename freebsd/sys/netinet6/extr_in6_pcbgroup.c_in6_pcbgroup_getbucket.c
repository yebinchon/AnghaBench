
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct inpcbinfo {int ipi_npcbgroups; } ;


 int rss_getbucket (int) ;

__attribute__((used)) static __inline u_int
in6_pcbgroup_getbucket(struct inpcbinfo *pcbinfo, uint32_t hash)
{




 return (hash % pcbinfo->ipi_npcbgroups);

}
