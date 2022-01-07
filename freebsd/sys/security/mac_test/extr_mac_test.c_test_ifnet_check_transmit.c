
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_IFNET ;
 int MAGIC_MBUF ;
 int ifnet_check_transmit ;

__attribute__((used)) static int
test_ifnet_check_transmit(struct ifnet *ifp, struct label *ifplabel,
    struct mbuf *m, struct label *mlabel)
{

 LABEL_CHECK(ifplabel, MAGIC_IFNET);
 LABEL_CHECK(mlabel, MAGIC_MBUF);
 COUNTER_INC(ifnet_check_transmit);

 return (0);
}
