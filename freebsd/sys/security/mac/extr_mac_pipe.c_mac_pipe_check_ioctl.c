
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct pipepair {int pp_label; int pp_mtx; } ;


 int MAC_CHECK_PROBE4 (int ,int,struct ucred*,struct pipepair*,unsigned long,void*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct pipepair*,int ,unsigned long,void*) ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int pipe_check_ioctl ;

int
mac_pipe_check_ioctl(struct ucred *cred, struct pipepair *pp,
    unsigned long cmd, void *data)
{
 int error;

 mtx_assert(&pp->pp_mtx, MA_OWNED);

 MAC_POLICY_CHECK_NOSLEEP(pipe_check_ioctl, cred, pp, pp->pp_label,
     cmd, data);
 MAC_CHECK_PROBE4(pipe_check_ioctl, error, cred, pp, cmd, data);

 return (error);
}
