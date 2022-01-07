
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct trapframe {int tf_sstatus; int tf_sepc; int tf_gp; int tf_sp; int tf_ra; int tf_a; int tf_s; int tf_t; } ;
struct thread {struct trapframe* td_frame; } ;
struct TYPE_4__ {int gp_sstatus; int gp_sepc; int gp_gp; int gp_sp; int gp_ra; int gp_a; int gp_s; int gp_t; } ;
struct TYPE_5__ {TYPE_1__ mc_gpregs; } ;
typedef TYPE_2__ mcontext_t ;


 int memcpy (int ,int ,int) ;

int
set_mcontext(struct thread *td, mcontext_t *mcp)
{
 struct trapframe *tf;

 tf = td->td_frame;

 memcpy(tf->tf_t, mcp->mc_gpregs.gp_t, sizeof(tf->tf_t));
 memcpy(tf->tf_s, mcp->mc_gpregs.gp_s, sizeof(tf->tf_s));
 memcpy(tf->tf_a, mcp->mc_gpregs.gp_a, sizeof(tf->tf_a));

 tf->tf_ra = mcp->mc_gpregs.gp_ra;
 tf->tf_sp = mcp->mc_gpregs.gp_sp;
 tf->tf_gp = mcp->mc_gpregs.gp_gp;
 tf->tf_sepc = mcp->mc_gpregs.gp_sepc;
 tf->tf_sstatus = mcp->mc_gpregs.gp_sstatus;

 return (0);
}
