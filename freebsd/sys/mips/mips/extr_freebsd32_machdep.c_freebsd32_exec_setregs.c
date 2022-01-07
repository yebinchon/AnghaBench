
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {scalar_t__ md_tls_tcb_offset; } ;
struct thread {TYPE_2__ td_md; TYPE_1__* td_frame; } ;
struct image_params {int dummy; } ;
struct TYPE_3__ {int sp; int sr; } ;


 int MIPS_SR_UX ;
 scalar_t__ TLS_TCB_SIZE32 ;
 scalar_t__ TLS_TP_OFFSET ;
 int exec_setregs (struct thread*,struct image_params*,int ) ;

__attribute__((used)) static void
freebsd32_exec_setregs(struct thread *td, struct image_params *imgp, u_long stack)
{
 exec_setregs(td, imgp, stack);





 td->td_frame->sp -= 65536;




 td->td_frame->sr &= ~MIPS_SR_UX;

 td->td_md.md_tls_tcb_offset = TLS_TP_OFFSET + TLS_TCB_SIZE32;
}
