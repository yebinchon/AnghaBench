
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_POLICY_CHECK (int ,struct label*,int) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct label*,int) ;
 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct label*) ;
 int M_WAITOK ;
 int ipq_destroy_label ;
 int ipq_init_label ;
 struct label* mac_labelzone_alloc (int) ;
 int mac_labelzone_free (struct label*) ;

__attribute__((used)) static struct label *
mac_ipq_label_alloc(int flag)
{
 struct label *label;
 int error;

 label = mac_labelzone_alloc(flag);
 if (label == ((void*)0))
  return (((void*)0));

 if (flag & M_WAITOK)
  MAC_POLICY_CHECK(ipq_init_label, label, flag);
 else
  MAC_POLICY_CHECK_NOSLEEP(ipq_init_label, label, flag);
 if (error) {
  MAC_POLICY_PERFORM_NOSLEEP(ipq_destroy_label, label);
  mac_labelzone_free(label);
  return (((void*)0));
 }
 return (label);
}
