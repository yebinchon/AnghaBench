
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct label*) ;
 int mac_labelzone_free (struct label*) ;
 int syncache_destroy_label ;

void
mac_syncache_destroy(struct label **label)
{

 if (*label != ((void*)0)) {
  MAC_POLICY_PERFORM_NOSLEEP(syncache_destroy_label, *label);
  mac_labelzone_free(*label);
  *label = ((void*)0);
 }
}
