
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;
struct swdevt {int sw_vp; } ;


 int FREAD ;
 int FWRITE ;
 int VOP_CLOSE (int ,int,int ,struct thread*) ;
 int vrele (int ) ;

__attribute__((used)) static void
swapdev_close(struct thread *td, struct swdevt *sp)
{

 VOP_CLOSE(sp->sw_vp, FREAD | FWRITE, td->td_ucred, td);
 vrele(sp->sw_vp);
}
