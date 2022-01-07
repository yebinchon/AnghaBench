
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct label*) ;
 int mac_labelzone_free (struct label*) ;
 int posixsem_destroy_label ;

__attribute__((used)) static void
mac_posixsem_label_free(struct label *label)
{

 MAC_POLICY_PERFORM_NOSLEEP(posixsem_destroy_label, label);
 mac_labelzone_free(label);
}
