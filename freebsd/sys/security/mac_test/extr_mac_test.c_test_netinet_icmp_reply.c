
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_MBUF ;
 int netinet_icmp_reply ;

__attribute__((used)) static void
test_netinet_icmp_reply(struct mbuf *mrecv, struct label *mrecvlabel,
    struct mbuf *msend, struct label *msendlabel)
{

 LABEL_CHECK(mrecvlabel, MAGIC_MBUF);
 LABEL_CHECK(msendlabel, MAGIC_MBUF);
 COUNTER_INC(netinet_icmp_reply);
}
