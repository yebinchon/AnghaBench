
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct pipepair {int pp_label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ucred*,struct pipepair*,int ) ;
 int pipe_create ;

void
mac_pipe_create(struct ucred *cred, struct pipepair *pp)
{

 MAC_POLICY_PERFORM_NOSLEEP(pipe_create, cred, pp, pp->pp_label);
}
