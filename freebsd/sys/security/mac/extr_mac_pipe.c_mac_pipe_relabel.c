
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct pipepair {int pp_label; } ;
struct label {int dummy; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ucred*,struct pipepair*,int ,struct label*) ;
 int pipe_relabel ;

__attribute__((used)) static void
mac_pipe_relabel(struct ucred *cred, struct pipepair *pp,
    struct label *newlabel)
{

 MAC_POLICY_PERFORM_NOSLEEP(pipe_relabel, cred, pp, pp->pp_label,
     newlabel);
}
