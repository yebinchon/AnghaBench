
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct pipepair {int pp_label; int pp_mtx; } ;
struct label {int dummy; } ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct pipepair*,struct label*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct pipepair*,int ,struct label*) ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int pipe_check_relabel ;

__attribute__((used)) static int
mac_pipe_check_relabel(struct ucred *cred, struct pipepair *pp,
    struct label *newlabel)
{
 int error;

 mtx_assert(&pp->pp_mtx, MA_OWNED);

 MAC_POLICY_CHECK_NOSLEEP(pipe_check_relabel, cred, pp, pp->pp_label,
     newlabel);
 MAC_CHECK_PROBE3(pipe_check_relabel, error, cred, pp, newlabel);

 return (error);
}
