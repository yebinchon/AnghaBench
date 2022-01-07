
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int cr_label; } ;
struct label {int dummy; } ;
struct inpcb {TYPE_1__* inp_cred; } ;
struct TYPE_2__ {int cr_label; } ;


 int ENOENT ;
 int partition_check (int ,int ) ;

__attribute__((used)) static int
partition_inpcb_check_visible(struct ucred *cred, struct inpcb *inp,
    struct label *inplabel)
{
 int error;

 error = partition_check(cred->cr_label, inp->inp_cred->cr_label);

 return (error ? ENOENT : 0);
}
