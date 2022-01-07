
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_short ;
struct inpcbinfo {int ipi_hashfields; struct inpcbgroup* ipi_pcbgroups; } ;
struct inpcbgroup {int dummy; } ;
struct in_addr {int s_addr; } ;




 size_t in_pcbgroup_getbucket (struct inpcbinfo*,int) ;
 int rss_hash_ip4_2tuple (struct in_addr,struct in_addr) ;
 int rss_hash_ip4_4tuple (struct in_addr,int,struct in_addr,int) ;

struct inpcbgroup *
in_pcbgroup_bytuple(struct inpcbinfo *pcbinfo, struct in_addr laddr,
    u_short lport, struct in_addr faddr, u_short fport)
{
 uint32_t hash;






 switch (pcbinfo->ipi_hashfields) {
 case 128:



  hash = faddr.s_addr ^ fport;

  break;

 case 129:



  hash = faddr.s_addr ^ laddr.s_addr;

  break;

 default:
  hash = 0;
 }
 return (&pcbinfo->ipi_pcbgroups[in_pcbgroup_getbucket(pcbinfo,
     hash)]);
}
