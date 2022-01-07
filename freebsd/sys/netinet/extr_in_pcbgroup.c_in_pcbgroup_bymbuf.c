
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct inpcbinfo {int dummy; } ;
struct inpcbgroup {int dummy; } ;


 int M_HASHTYPE_GET (struct mbuf*) ;
 struct inpcbgroup* in_pcbgroup_byhash (struct inpcbinfo*,int ,int ) ;

__attribute__((used)) static struct inpcbgroup *
in_pcbgroup_bymbuf(struct inpcbinfo *pcbinfo, struct mbuf *m)
{

 return (in_pcbgroup_byhash(pcbinfo, M_HASHTYPE_GET(m),
     m->m_pkthdr.flowid));
}
