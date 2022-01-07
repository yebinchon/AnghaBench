
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct label {int dummy; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ucred*,struct label*) ;
 int cred_relabel ;

void
mac_cred_relabel(struct ucred *cred, struct label *newlabel)
{

 MAC_POLICY_PERFORM_NOSLEEP(cred_relabel, cred, newlabel);
}
