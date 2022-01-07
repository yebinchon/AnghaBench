
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct label {int dummy; } ;
struct ifnet {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_CRED ;
 int MAGIC_IFNET ;
 int ifnet_check_relabel ;

__attribute__((used)) static int
test_ifnet_check_relabel(struct ucred *cred, struct ifnet *ifp,
    struct label *ifplabel, struct label *newlabel)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(ifplabel, MAGIC_IFNET);
 LABEL_CHECK(newlabel, MAGIC_IFNET);
 COUNTER_INC(ifnet_check_relabel);

 return (0);
}
