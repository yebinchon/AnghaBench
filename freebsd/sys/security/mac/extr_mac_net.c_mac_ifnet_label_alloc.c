
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_POLICY_PERFORM (int ,struct label*) ;
 int M_WAITOK ;
 int ifnet_init_label ;
 struct label* mac_labelzone_alloc (int ) ;

__attribute__((used)) static struct label *
mac_ifnet_label_alloc(void)
{
 struct label *label;

 label = mac_labelzone_alloc(M_WAITOK);
 MAC_POLICY_PERFORM(ifnet_init_label, label);
 return (label);
}
