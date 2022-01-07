
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ipq {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_IPQ ;
 int MAGIC_MBUF ;
 int ipq_match ;

__attribute__((used)) static int
test_ipq_match(struct mbuf *fragment, struct label *fragmentlabel,
    struct ipq *q, struct label *qlabel)
{

 LABEL_CHECK(fragmentlabel, MAGIC_MBUF);
 LABEL_CHECK(qlabel, MAGIC_IPQ);
 COUNTER_INC(ipq_match);

 return (1);
}
