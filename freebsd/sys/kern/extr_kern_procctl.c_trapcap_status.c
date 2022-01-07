
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct proc {int p_flag2; } ;


 int P2_TRAPCAP ;
 int PROC_TRAPCAP_CTL_DISABLE ;
 int PROC_TRAPCAP_CTL_ENABLE ;

__attribute__((used)) static int
trapcap_status(struct thread *td, struct proc *p, int *data)
{

 *data = (p->p_flag2 & P2_TRAPCAP) != 0 ? PROC_TRAPCAP_CTL_ENABLE :
     PROC_TRAPCAP_CTL_DISABLE;
 return (0);
}
