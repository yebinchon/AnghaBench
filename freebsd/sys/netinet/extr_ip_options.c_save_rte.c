
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u_char ;
struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct in_addr {int dummy; } ;
struct TYPE_2__ {struct in_addr dst; int srcopt; } ;
struct ipopt_tag {unsigned int ip_nhops; TYPE_1__ ip_srcrt; } ;
typedef int dst ;


 unsigned int IPOPT_OFFSET ;
 size_t IPOPT_OLEN ;
 int M_NOWAIT ;
 int PACKET_TAG_IPOPTIONS ;
 int bcopy (unsigned int*,int ,unsigned int) ;
 int m_tag_free (struct m_tag*) ;
 scalar_t__ m_tag_get (int ,int,int ) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;

__attribute__((used)) static void
save_rte(struct mbuf *m, u_char *option, struct in_addr dst)
{
 unsigned olen;
 struct ipopt_tag *opts;

 opts = (struct ipopt_tag *)m_tag_get(PACKET_TAG_IPOPTIONS,
     sizeof(struct ipopt_tag), M_NOWAIT);
 if (opts == ((void*)0))
  return;

 olen = option[IPOPT_OLEN];
 if (olen > sizeof(opts->ip_srcrt) - (1 + sizeof(dst))) {
  m_tag_free((struct m_tag *)opts);
  return;
 }
 bcopy(option, opts->ip_srcrt.srcopt, olen);
 opts->ip_nhops = (olen - IPOPT_OFFSET - 1) / sizeof(struct in_addr);
 opts->ip_srcrt.dst = dst;
 m_tag_prepend(m, (struct m_tag *)opts);
}
