
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int ENOMEM ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct label*,int ) ;
 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct label*) ;
 int MPC_OBJECT_SYNCACHE ;
 int M_NOWAIT ;
 int mac_labeled ;
 struct label* mac_labelzone_alloc (int ) ;
 int mac_labelzone_free (struct label*) ;
 int syncache_destroy_label ;
 int syncache_init_label ;

int
mac_syncache_init(struct label **label)
{
 int error;

 if (mac_labeled & MPC_OBJECT_SYNCACHE) {
  *label = mac_labelzone_alloc(M_NOWAIT);
  if (*label == ((void*)0))
   return (ENOMEM);







  MAC_POLICY_CHECK_NOSLEEP(syncache_init_label, *label,
      M_NOWAIT);
  if (error) {
   MAC_POLICY_PERFORM_NOSLEEP(syncache_destroy_label,
       *label);
   mac_labelzone_free(*label);
  }
  return (error);
 } else
  *label = ((void*)0);
 return (0);
}
