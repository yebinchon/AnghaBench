
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_POLICY_CHECK (int ,struct label*,int) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct label*,int) ;
 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct label*) ;
 int M_WAITOK ;
 struct label* mac_labelzone_alloc (int) ;
 int mac_labelzone_free (struct label*) ;
 int socketpeer_destroy_label ;
 int socketpeer_init_label ;

__attribute__((used)) static struct label *
mac_socketpeer_label_alloc(int flag)
{
 struct label *label;
 int error;

 label = mac_labelzone_alloc(flag);
 if (label == ((void*)0))
  return (((void*)0));

 if (flag & M_WAITOK)
  MAC_POLICY_CHECK(socketpeer_init_label, label, flag);
 else
  MAC_POLICY_CHECK_NOSLEEP(socketpeer_init_label, label, flag);
 if (error) {
  MAC_POLICY_PERFORM_NOSLEEP(socketpeer_destroy_label, label);
  mac_labelzone_free(label);
  return (((void*)0));
 }
 return (label);
}
