
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_short ;
struct inpcbinfo {int ipi_hashfields; struct inpcbgroup* ipi_pcbgroups; } ;
struct inpcbgroup {int dummy; } ;
struct in6_addr {int* s6_addr32; } ;




 size_t in6_pcbgroup_getbucket (struct inpcbinfo*,int) ;
 int rss_hash_ip6_2tuple (struct in6_addr const*,struct in6_addr const*) ;
 int rss_hash_ip6_4tuple (struct in6_addr const*,int,struct in6_addr const*,int) ;

struct inpcbgroup *
in6_pcbgroup_bytuple(struct inpcbinfo *pcbinfo, const struct in6_addr *laddrp,
    u_short lport, const struct in6_addr *faddrp, u_short fport)
{
 uint32_t hash;






 switch (pcbinfo->ipi_hashfields) {
 case 128:



  hash = faddrp->s6_addr32[3] ^ fport;

  break;

 case 129:



  hash = faddrp->s6_addr32[3] ^ laddrp->s6_addr32[3];

  break;

 default:
  hash = 0;
 }
 return (&pcbinfo->ipi_pcbgroups[in6_pcbgroup_getbucket(pcbinfo,
     hash)]);
}
