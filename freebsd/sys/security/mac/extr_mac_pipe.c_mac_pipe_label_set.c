
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct pipepair {int pp_mtx; } ;
struct label {int dummy; } ;


 int MA_OWNED ;
 int mac_pipe_check_relabel (struct ucred*,struct pipepair*,struct label*) ;
 int mac_pipe_relabel (struct ucred*,struct pipepair*,struct label*) ;
 int mtx_assert (int *,int ) ;

int
mac_pipe_label_set(struct ucred *cred, struct pipepair *pp,
    struct label *label)
{
 int error;

 mtx_assert(&pp->pp_mtx, MA_OWNED);

 error = mac_pipe_check_relabel(cred, pp, label);
 if (error)
  return (error);

 mac_pipe_relabel(cred, pp, label);

 return (0);
}
