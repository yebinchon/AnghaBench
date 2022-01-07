
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct inpcbinfo {scalar_t__ ipi_hashfields; struct inpcbgroup* ipi_pcbgroups; } ;
struct inpcbgroup {int dummy; } ;


 scalar_t__ IPI_HASHFIELDS_2TUPLE ;
 scalar_t__ IPI_HASHFIELDS_4TUPLE ;
 scalar_t__ M_HASHTYPE_RSS_IPV6 ;
 scalar_t__ M_HASHTYPE_RSS_TCP_IPV6 ;
 scalar_t__ M_HASHTYPE_RSS_UDP_IPV6 ;
 size_t in6_pcbgroup_getbucket (struct inpcbinfo*,int ) ;

struct inpcbgroup *
in6_pcbgroup_byhash(struct inpcbinfo *pcbinfo, u_int hashtype, uint32_t hash)
{
 return (((void*)0));
}
