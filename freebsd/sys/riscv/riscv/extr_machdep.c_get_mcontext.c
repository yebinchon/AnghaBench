
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct trapframe {int tf_sstatus; int tf_sepc; int tf_tp; int tf_gp; int tf_sp; int tf_ra; int tf_a; int tf_s; int tf_t; } ;
struct thread {struct trapframe* td_frame; } ;
struct TYPE_4__ {int gp_sstatus; int gp_sepc; int gp_tp; int gp_gp; int gp_sp; int gp_ra; scalar_t__* gp_t; scalar_t__* gp_a; scalar_t__* gp_s; } ;
struct TYPE_5__ {TYPE_1__ mc_gpregs; } ;
typedef TYPE_2__ mcontext_t ;


 int GET_MC_CLEAR_RET ;
 int memcpy (scalar_t__*,int ,int) ;

int
get_mcontext(struct thread *td, mcontext_t *mcp, int clear_ret)
{
 struct trapframe *tf = td->td_frame;

 memcpy(mcp->mc_gpregs.gp_t, tf->tf_t, sizeof(mcp->mc_gpregs.gp_t));
 memcpy(mcp->mc_gpregs.gp_s, tf->tf_s, sizeof(mcp->mc_gpregs.gp_s));
 memcpy(mcp->mc_gpregs.gp_a, tf->tf_a, sizeof(mcp->mc_gpregs.gp_a));

 if (clear_ret & GET_MC_CLEAR_RET) {
  mcp->mc_gpregs.gp_a[0] = 0;
  mcp->mc_gpregs.gp_t[0] = 0;
 }

 mcp->mc_gpregs.gp_ra = tf->tf_ra;
 mcp->mc_gpregs.gp_sp = tf->tf_sp;
 mcp->mc_gpregs.gp_gp = tf->tf_gp;
 mcp->mc_gpregs.gp_tp = tf->tf_tp;
 mcp->mc_gpregs.gp_sepc = tf->tf_sepc;
 mcp->mc_gpregs.gp_sstatus = tf->tf_sstatus;

 return (0);
}
