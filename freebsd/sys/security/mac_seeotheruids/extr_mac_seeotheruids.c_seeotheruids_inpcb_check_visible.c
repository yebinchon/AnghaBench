
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct label {int dummy; } ;
struct inpcb {int inp_cred; } ;


 int seeotheruids_check (struct ucred*,int ) ;

__attribute__((used)) static int
seeotheruids_inpcb_check_visible(struct ucred *cred, struct inpcb *inp,
    struct label *inplabel)
{

 return (seeotheruids_check(cred, inp->inp_cred));
}
