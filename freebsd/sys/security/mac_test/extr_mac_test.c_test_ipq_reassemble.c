
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
 int ipq_reassemble ;

__attribute__((used)) static void
test_ipq_reassemble(struct ipq *q, struct label *qlabel, struct mbuf *m,
   struct label *mlabel)
{

 LABEL_CHECK(qlabel, MAGIC_IPQ);
 LABEL_CHECK(mlabel, MAGIC_MBUF);
 COUNTER_INC(ipq_reassemble);
}
