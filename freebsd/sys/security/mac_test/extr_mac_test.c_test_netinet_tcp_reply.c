
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_MBUF ;
 int netinet_tcp_reply ;

__attribute__((used)) static void
test_netinet_tcp_reply(struct mbuf *m, struct label *mlabel)
{

 LABEL_CHECK(mlabel, MAGIC_MBUF);
 COUNTER_INC(netinet_tcp_reply);
}
