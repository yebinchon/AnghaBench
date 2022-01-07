
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct pipepair {int pp_label; int pp_mtx; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,struct pipepair*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct pipepair*,int ) ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int pipe_check_poll ;

int
mac_pipe_check_poll(struct ucred *cred, struct pipepair *pp)
{
 int error;

 mtx_assert(&pp->pp_mtx, MA_OWNED);

 MAC_POLICY_CHECK_NOSLEEP(pipe_check_poll, cred, pp, pp->pp_label);
 MAC_CHECK_PROBE2(pipe_check_poll, error, cred, pp);

 return (error);
}
