
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct proc {int p_flag2; } ;


 int MA_OWNED ;
 int P2_STKGAP_DISABLE ;
 int P2_STKGAP_DISABLE_EXEC ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_STACKGAP_DISABLE ;
 int PROC_STACKGAP_DISABLE_EXEC ;
 int PROC_STACKGAP_ENABLE ;
 int PROC_STACKGAP_ENABLE_EXEC ;

__attribute__((used)) static int
stackgap_status(struct thread *td, struct proc *p, int *data)
{
 PROC_LOCK_ASSERT(p, MA_OWNED);

 *data = (p->p_flag2 & P2_STKGAP_DISABLE) != 0 ? PROC_STACKGAP_DISABLE :
     PROC_STACKGAP_ENABLE;
 *data |= (p->p_flag2 & P2_STKGAP_DISABLE_EXEC) != 0 ?
     PROC_STACKGAP_DISABLE_EXEC : PROC_STACKGAP_ENABLE_EXEC;
 return (0);
}
