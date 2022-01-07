
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ip6q {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_IP6Q ;
 int MAGIC_MBUF ;
 int ip6q_create ;

__attribute__((used)) static void
test_ip6q_create(struct mbuf *fragment, struct label *fragmentlabel,
    struct ip6q *q6, struct label *q6label)
{

 LABEL_CHECK(fragmentlabel, MAGIC_MBUF);
 LABEL_CHECK(q6label, MAGIC_IP6Q);
 COUNTER_INC(ip6q_create);
}
