
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int cr_label; } ;
struct proc {TYPE_1__* p_ucred; } ;
struct TYPE_2__ {int cr_label; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (int ,int ) ;
 int MAGIC_CRED ;
 int proc_check_signal ;

__attribute__((used)) static int
test_proc_check_signal(struct ucred *cred, struct proc *p, int signum)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 LABEL_CHECK(p->p_ucred->cr_label, MAGIC_CRED);
 COUNTER_INC(proc_check_signal);

 return (0);
}
