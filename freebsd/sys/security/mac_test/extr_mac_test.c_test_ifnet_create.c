
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;
struct ifnet {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_IFNET ;
 int ifnet_create ;

__attribute__((used)) static void
test_ifnet_create(struct ifnet *ifp, struct label *ifplabel)
{

 LABEL_CHECK(ifplabel, MAGIC_IFNET);
 COUNTER_INC(ifnet_create);
}
